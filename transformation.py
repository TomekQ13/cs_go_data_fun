def transformation(echo = False, inital_load = False, comments = '', run_id = None):
    from scsdm_etl.transform import transform
    

    head_to_head_query = '''insert into C##TKUCZAK.TR_HEAD_TO_HEAD 
    (T_INSERT_RUN_ID, MATCH_RK, LT_NAME, RT_NAME, MAP_NAME, LT_SCORE, RT_SCORE, TOURNAMENT) 
    select distinct __run_id__ as T_INSERT_RUN_ID, t2.MATCH_RK, t1.TEAM_LEFT, t1.TEAM_RIGHT, substr(t1.MAP, instr(t1.MAP, ' ')) as MAP_NAME, substr(t1.SCORE,1,2) as LT_SCORE, substr(t1.SCORE, instr(t1.SCORE, '-') + 1, 3) as RT_SCORE, t1.TOURNAMENT
    from C##TKUCZAK.EX_HEAD_TO_HEAD t1 left join C##TKUCZAK.TR_MAP_MATCH_RK t2 
    on t1.MATCH_URL = t2.MATCH_URL'''
                                
    lineup_query = '''insert into C##TKUCZAK.TR_LINEUP 
    (T_INSERT_RUN_ID, MATCH_RK, LT_PLAYER_ONE, LT_PLAYER_TWO, LT_PLAYER_THREE, LT_PLAYER_FOUR, LT_PLAYER_FIVE, RT_PLAYER_ONE, RT_PLAYER_TWO, RT_PLAYER_THREE, RT_PLAYER_FOUR, RT_PLAYER_FIVE) 
    select distinct __run_id__ as T_INSERT_RUN_ID, t2.MATCH_RK, LEFT_TEAM_PLAYER_ONE, LEFT_TEAM_PLAYER_TWO, LEFT_TEAM_PLAYER_THREE, LEFT_TEAM_PLAYER_FOUR, LEFT_TEAM_PLAYER_FIVE, 
    RIGHT_TEAM_PLAYER_ONE, RIGHT_TEAM_PLAYER_TWO, RIGHT_TEAM_PLAYER_THREE, RIGHT_TEAM_PLAYER_FOUR, RIGHT_TEAM_PLAYER_FIVE
    from C##TKUCZAK.EX_FINAL_DICTIONARY t1 left join C##TKUCZAK.TR_MAP_MATCH_RK t2
    on t1.MATCH_URL = t2.MATCH_URL'''
    
    map_query = '''insert into C##TKUCZAK.TR_MAP 
    (T_INSERT_RUN_ID, MATCH_RK, MAP_NAME, MAP_NUMBER, LT_SCORE, RT_SCORE) 
    select distinct __run_id__ as "T_INSERT_RUN_ID", t2.MATCH_RK,  t1.MAP_NAME, t1.MAP_NUMBER as "MAP_NUMBER", regexp_replace(t1.TEAM_LEFT_SCORE, '-|ERRRO_TBA|TBA|ERROR_TBA') as "LT_SCORE", regexp_replace(t1.TEAM_RIGHT_SCORE, '-|ERRRO_TBA|TBA|ERROR_TBA') as "RT_SCORE"
    from C##TKUCZAK.EX_RESULTS_PDF t1 left join C##TKUCZAK.TR_MAP_MATCH_RK t2 
    on t1.MATCH_URL = t2.MATCH_URL'''
    
    match_query = '''insert into C##TKUCZAK.TR_MATCH 
    (MATCH_RK, LT_NAME, RT_NAME, LT_NATIONALITY, RT_NATIONALITY, LT_RANKING, RT_RANKING, TOURNAMENT, MATCH_HOUR, MATCH_DAY, MATCH_MONTH, YEAR_OF_THE_MATCH, HEAD_TO_HEAD_OVERTIMES, T_INSERT_RUN_ID) 
    select distinct t2.MATCH_RK, t1.LEFT_TEAM, t1.RIGHT_TEAM, t1.LEFT_TEAM_NATIONALITY, t1.RIGHT_TEAM_NATIONALITY, t1.LEFT_TEAM_RANKING, t1.RIGHT_TEAM_RANKING, t1.TOURNAMENT, t1.HOUR_OF_MATCH, t1.DAY_OF_MATCH, t1.MONTH_OF_MATCH, t1.YEAR_OF_MATCH, t1.OVERTIMES, __run_id__ as "T_INSERT_RUN_ID" 
    from C##TKUCZAK.EX_FINAL_DICTIONARY t1
    left join C##TKUCZAK.TR_MAP_MATCH_RK t2 
    on t1.MATCH_URL = t2.MATCH_URL'''        
    
    
    if not run_id:
        transform_inst = transform(echo = echo)
        transform_inst.open_run_id(etl_code = 'TRANSFORMATION', comments = '')
    else:
        transform_inst = transform(echo = echo, run_id = run_id)
    
    transform_inst.load_rk()
    
    transform_inst.transform_insert(source_table = 'EX_HEAD_TO_HEAD', target_table = 'TR_HEAD_TO_HEAD', initial_load = inital_load, transform_query = head_to_head_query)
    transform_inst.transform_insert(source_table = 'EX_FINAL_DICTIONARY', target_table = 'TR_LINEUP ', initial_load = inital_load, transform_query = lineup_query)
    transform_inst.transform_insert(source_table = 'EX_RESULTS_PDF', target_table = 'TR_MAP', initial_load = inital_load, transform_query = map_query)
    transform_inst.transform_insert(source_table = 'EX_FINAL_DICTIONARY ', target_table = 'TR_MATCH ', initial_load = inital_load, transform_query = match_query)
        
    #transform_inst.close_run_id()
    
    
if __name__ == '__main__':
    transformation()
    
        