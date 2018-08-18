//
// Created by André on 15/08/2018.
//

#ifndef _STOPWATCH_H
#define _STOPWATCH_H

#define STOPWATCH_START() auto __stopwatch_start = std::chrono::steady_clock::now();
#define STOPWATCH_END() auto __stopwatch_end = std::chrono::steady_clock::now();
#define STOPWATCH_RESTART() __stopwatch_start = std::chrono::steady_clock::now();
#define STOPWATCH_ELAPSED std::chrono::duration_cast<std::chrono::milliseconds>(__stopwatch_end - __stopwatch_start).count()

#endif //_STOPWATCH_H
