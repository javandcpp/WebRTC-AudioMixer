/*
 *  Copyright (c) 2016 The WebRTC project authors. All Rights Reserved.
 *
 *  Use of this source code is governed by a BSD-style license
 *  that can be found in the LICENSE file in the root of the source
 *  tree. An additional intellectual property rights grant can be found
 *  in the file PATENTS.  All contributing project authors may
 *  be found in the AUTHORS file in the root of the source tree.
 */

#ifndef MODULES_AUDIO_MIXER_OUTPUT_RATE_CALCULATOR_H_
#define MODULES_AUDIO_MIXER_OUTPUT_RATE_CALCULATOR_H_

#include <vector>

#include "api/array_view.h"

namespace WEBRTC_NAMESAPCE {

// Decides the sample rate of a mixing iteration given the preferred
// sample rates of the sources.
class OutputRateCalculator {
 public:
  virtual int CalculateOutputRateFromRange(
      ksrtc::ArrayView<const int> preferred_sample_rates) = 0;

  virtual ~OutputRateCalculator() {}
};

}  // namespace WEBRTC_NAMESAPCE

#endif  // MODULES_AUDIO_MIXER_OUTPUT_RATE_CALCULATOR_H_
