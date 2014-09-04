// this is for emacs file handling -*- mode: c++; indent-tabs-mode: nil -*-

// -- BEGIN LICENSE BLOCK ----------------------------------------------
// -- END LICENSE BLOCK ------------------------------------------------

//----------------------------------------------------------------------
/*!\file
 *
 * \author  Klaus Uhl <uhl@fzi.de>
 * \date    2008-04-15
 *
 * \brief   Contains icl_core::thread::PeriodicThreadImpl
 *
 * \b icl_core::thread::PeriodicThreadImpl
 *
 */
//----------------------------------------------------------------------
#ifndef ICL_CORE_THREAD_PERIODIC_THREAD_IMPL_LXRT33_H_INCLUDED
#define ICL_CORE_THREAD_PERIODIC_THREAD_IMPL_LXRT33_H_INCLUDED

#include "PeriodicThreadImpl.h"

namespace icl_core {
namespace thread {

class PeriodicThreadImplLxrt33 : public PeriodicThreadImpl, protected virtual icl_core::Noncopyable
{
public:
  explicit PeriodicThreadImplLxrt33(const icl_core::TimeSpan& period);
  virtual ~PeriodicThreadImplLxrt33();

  virtual void makePeriodic();
  virtual icl_core::TimeSpan period() const { return m_period; }
  virtual bool setPeriod(const icl_core::TimeSpan& period);
  virtual void waitPeriod();

private:
  icl_core::TimeSpan m_period;
};

}
}

#endif