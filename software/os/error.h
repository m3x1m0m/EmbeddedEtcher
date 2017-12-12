#ifndef OS_ERROR_H
#define OS_ERROR_H 

//--------------Includes-----------------
#include"ostypes.h"

//--------------Preprocessor Hacks-------

/** Throws an error given an error type.
 *
 */
#define THROW_ERROR(ERROR_TYPE)\
	osPrintError(__FILE__, __LINE__, ERROR_TYPE)
/** Throws a warning given a warning type.
 *
 */
#define THROW_WARNING(WARNING_TYPE)\
	osPrintWarning(__FILE__, __LINE__, WARNING_TYPE)

//--------------Funtions-----------------

/** Creating a error message string from inter alia an error code.
 *
 * @param ifile Filename where error occurs.
 * @param iline Line where error occurs.
 * @param ierror Error code.
 * @param message Message related to the error.
 * @retval 1 (SUCCESS) or 0 (FAILURE).
 */
uint8_t osExplainError(const char* ifile, const uint8_t iline, const osError_t ierror, char* iomessage);

/** Print error. This is where the error output can be redirected (later).
 *
 * @param ifile Filename where error occurs.
 * @param iline Line where error occurs.
 * @param ierror Error code.
 * @retval 1 (SUCCESS) or 0 (FAILURE).
 */
uint8_t osPrintError(const char* ifile, const int iline, const osError_t ierror);

/** Creating a warning message string from inter alia a warning code.
 *
 * @param ifile Filename where warning occurs.
 * @param iline Line where warning occurs.
 * @param ierror Warning code.
 * @param message Message related to the warning.
 * @retval 1 (SUCCESS) or 0 (FAILURE).
 */
uint8_t osExplainWarning(const char* ifile, const uint8_t iline, const osWarning_t ierror, char* iomessage);

/** Print warning. This is where the warning output can be redirected (later).
 *
 * @param ifile Filename where warning occurs.
 * @param iline Line where warning occurs.
 * @param ierror Warning code.
 * @retval 1 (SUCCESS) or 0 (FAILURE).
 */
uint8_t osPrintWarning(const char* ifile, const int iline, const osWarning_t ierror);

#endif
