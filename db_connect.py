# -*- coding: utf-8 -*-
"""
Created on Wed Sep 30 18:56:24 2020

@author: kucza
"""

import cx_Oracle
import config


def start_con():
    connection = None
    try:
        connection = cx_Oracle.connect(
            config.username,
            config.password,
            config.dsn,
            encoding=config.encoding)
    
        # show the version of the Oracle Database
        print(connection.version)
    except cx_Oracle.Error as error:
        print(error)
    finally:
        return connection    
    #    # release the connection
    #    if connection:
    #        connection.close()
    
    
def stop_con(connection):
    connection.close()