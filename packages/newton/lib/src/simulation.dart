// Copyright (c) 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

part of newton;

abstract class Simulatable {
  /// The current position of the object in the simulation
  double x(double time);

  /// The current velocity of the object in the simulation
  double dx(double time);
}

/// The base class for all simulations. The user is meant to instantiate an
/// instance of a simulation and query the same for the position and velocity
/// of the body at a given interval.
///
/// Note: All operation on subclasses of Simulation are idempotent. Composite
/// simulations are not guaranteed to be idempotent however. FIXME(csg): How do
/// I make this apparent?
abstract class Simulation implements Simulatable {

  /// Returns if the simulation is done at a given time
  bool isDone(double time);
}
