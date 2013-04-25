#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.framework.logging;

/**
 * User: Kevin W. Sewell
 * Date: 2013-03-18
 * Time: 10h15
 */
public enum LogLevel {
    NONE,
    DEBUG,
    ERROR,
    INFO,
    TRACE,
    WARN
}