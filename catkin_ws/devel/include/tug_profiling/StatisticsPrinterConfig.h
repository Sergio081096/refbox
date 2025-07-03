#ifndef TUG_PROFILING_STATISTICSPRINTERCONFIG_H
#define TUG_PROFILING_STATISTICSPRINTERCONFIG_H

#include <limits>
#include <tug_cfg/scalar.h>
#include <tug_cfg/struct.h>

namespace tug_profiling
{
class StatisticsPrinterConfig
{
public:
  /**
   * Print profiling statistics regularly
   * 
   * Default: true
   */
  bool print_statistics;

  /**
   * Interval for printing profiling statistics
   * 
   * Unit: s
   * Default: 10.0
   * Minimum: 1e-09
   * Maximum: 60.0
   */
  double print_statistics_interval;


  //============================================================================
  // Magic starts here
  //============================================================================

  typedef tug_cfg::Struct<StatisticsPrinterConfig> MetaObject;

  StatisticsPrinterConfig()
    : print_statistics(true),
      print_statistics_interval(10.0),
      meta_object_(*this)
  {
  }

  operator MetaObject&()
  {
    return meta_object_;
  }

  operator const MetaObject&() const
  {
    return meta_object_;
  }

  static const MetaObject::Type& getDefinition()
  {
    using namespace tug_cfg;

    static MetaObject::FieldImpl<Scalar<bool>> print_statistics_(&StatisticsPrinterConfig::print_statistics, {
      "print_statistics", "b''", "b'Print profiling statistics regularly'", true, 0, false,
      true, false, true, {}, {}
    });
    static MetaObject::FieldImpl<Scalar<double>> print_statistics_interval_(&StatisticsPrinterConfig::print_statistics_interval, {
      "print_statistics_interval", "b's'", "b'Interval for printing profiling statistics'", true, 0, false,
      10.0, 1e-09, 60.0, {}, {}
    });

    static MetaObject::Type type("tug_profiling/StatisticsPrinterConfig", {
      &print_statistics_, &print_statistics_interval_
    });

    return type;
  }

protected:
  MetaObject meta_object_;
};
}  // namespace tug_profiling

#endif  // TUG_PROFILING_STATISTICSPRINTERCONFIG_H
