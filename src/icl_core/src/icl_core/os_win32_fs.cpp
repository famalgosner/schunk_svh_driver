// this is for emacs file handling -*- mode: c++; indent-tabs-mode: nil -*-

// -- BEGIN LICENSE BLOCK ----------------------------------------------
// -- END LICENSE BLOCK ------------------------------------------------

//----------------------------------------------------------------------
/*!\file
 *
 * \author  Klaus Uhl <uhl@fzi.de>
 * \date    2008-03-29
 *
 */
//----------------------------------------------------------------------
#include <stdio.h>

#include "icl_core/os_win32_fs.h"

namespace icl_core {
namespace os {
namespace hidden_win32 {

int rename(const char *old_filename, const char *new_filename)
{
  return ::rename(old_filename, new_filename);
}

int unlink(const char *filename)
{
  return ::_unlink(filename);
}

}
}
}