function [coef] = coefficients_g3_f3(r1,r2,r3,r4,r5, AreaT)
%% coefficients_g3_f3

%  Licensing: This code is distributed under the GNU LGPL license. 

%  Modified:  20 September 2011

%  Author:    Athanasios Polimeridis

% References

% A. G. Polimeridis and T. V. Yioultsis, �On the direct evaluation of weakly singular
% integrals in Galerkin mixed potential integral equation formulations,� IEEE Trans.
% Antennas Propag., vol. 56, no. 9, pp. 3011-3019, Sep. 2008.

% A. G. Polimeridis and J. R. Mosig, �Complete semi-analytical treatment of weakly
% singular integrals on planar triangles via the direct evaluation method,� Int. J.
% Numerical Methods Eng., vol. 83, pp. 1625-1650, 2010.

% A. G. Polimeridis, J. M. Tamayo, J. M. Rius and J. R. Mosig, �Fast and accurate
% computation of hyper-singular integrals in Galerkin surface integral equation
% formulations via the direct evaluation method,� IEEE Trans.
% Antennas Propag., vol. 59, no. 6, pp. 2329-2340, Jun. 2011.

% A. G. Polimeridis and J. R. Mosig, �On the direct evaluation of surface integral
% equation impedance matrix elements involving point singularities,� IEEE Antennas
% Wireless Propag. Lett., vol. 10, pp. 599-602, 2011.

% INPUT DATA
% r1,r2,r3,r4,r5 = point vectors of the triangular element's vertices
% Outer triangle P:(rp1,rp2,rp3)=(r1,r2,r3)
% Inner triangle Q:(rq1,rq2,rq3)=(r1,r4,r5)
% AreaT = area of outer integral

% OUTPUT DATA
% coef   
%

coef  = zeros(17);
%
bb = r2-r1;
cc = r3-r1;
dd = r4-r1;
ee = r5-r1;
%
t1 = sqrt(0.3e1);
t2 = 0.1e1 / AreaT;
t3 = t1 * t2;
t4 = cc(1) ^ 2;
t5 = t4 * cc(1);
t6 = t5 * bb(2);
t8 = t3 * t6 * ee(3);
t10 = cc(3) ^ 2;
t11 = t10 * cc(3);
t12 = t11 * bb(2);
t14 = t3 * t12 * ee(1);
t16 = cc(2) ^ 2;
t17 = t16 * cc(2);
t18 = t17 * bb(1);
t20 = t3 * t18 * ee(3);
t22 = t11 * bb(1);
t24 = t3 * t22 * ee(2);
t26 = t5 * bb(3);
t28 = t3 * t26 * ee(2);
t30 = t17 * bb(3);
t32 = t3 * t30 * ee(1);
t34 = t3 * cc(3);
t35 = cc(2) * bb(3);
t36 = bb(1) * ee(3);
t38 = t34 * t35 * t36;
t39 = t38 / 0.12e2;
t40 = t3 * bb(2);
t41 = cc(2) * bb(1);
t42 = cc(3) * ee(2);
t44 = t40 * t41 * t42;
t45 = t44 / 0.12e2;
t46 = cc(1) * bb(3);
t47 = bb(2) * ee(3);
t49 = t34 * t46 * t47;
t50 = t49 / 0.12e2;
t51 = t3 * cc(1);
t52 = bb(3) * ee(1);
t54 = t51 * t41 * t52;
t55 = t54 / 0.12e2;
t57 = cc(1) * bb(2);
t58 = bb(3) * ee(2);
t60 = t3 * cc(2) * t57 * t58;
t61 = t60 / 0.12e2;
t62 = t3 * bb(1);
t63 = cc(3) * ee(1);
t65 = t62 * t57 * t63;
t66 = t65 / 0.12e2;
t67 = t16 * bb(3);
t68 = t67 * ee(1);
t69 = t40 * t68;
t70 = t69 / 0.12e2;
t71 = bb(3) ^ 2;
t72 = t3 * t71;
t73 = cc(3) * cc(1);
t74 = t73 * ee(2);
t75 = t72 * t74;
t76 = t75 / 0.12e2;
t77 = bb(2) ^ 2;
t78 = t3 * t77;
t79 = cc(2) * cc(3);
t80 = t79 * ee(1);
t81 = t78 * t80;
t82 = t81 / 0.12e2;
t83 = t3 * t10;
t84 = bb(2) * bb(3);
t85 = t84 * ee(1);
t86 = t83 * t85;
t87 = t86 / 0.12e2;
t88 = cc(2) * t71;
t89 = t88 * ee(1);
t90 = t34 * t89;
t91 = t90 / 0.12e2;
t92 = cc(1) * cc(2);
t93 = t92 * ee(3);
t94 = t78 * t93;
t95 = t94 / 0.12e2;
t96 = t8 / 0.6e1 - t14 / 0.6e1 - t20 / 0.6e1 + t24 / 0.6e1 - t28 / 0.6e1 + t32 / 0.6e1 + t39 - t45 - t50 - t55 + t61 + t66 - t70 + t76 + t82 + t87 - t91 - t95;
t97 = t4 * bb(3);
t98 = t97 * ee(2);
t99 = t62 * t98;
t100 = t99 / 0.12e2;
t101 = bb(1) ^ 2;
t102 = cc(2) * t101;
t103 = t102 * ee(3);
t104 = t51 * t103;
t105 = t104 / 0.12e2;
t107 = t10 * bb(1);
t108 = t107 * ee(2);
t109 = t3 * bb(3) * t108;
t110 = t109 / 0.12e2;
t111 = t3 * t101;
t112 = t111 * t74;
t113 = t112 / 0.12e2;
t114 = t16 * bb(1);
t115 = t114 * ee(3);
t116 = t40 * t115;
t117 = t116 / 0.12e2;
t118 = t3 * t4;
t119 = bb(2) * bb(1);
t120 = t119 * ee(3);
t121 = t118 * t120;
t122 = t121 / 0.12e2;
t123 = t3 * t16;
t124 = t57 * ee(3);
t125 = t123 * t124;
t127 = cc(3) * bb(2);
t128 = t127 * ee(1);
t129 = t123 * t128;
t131 = t41 * ee(3);
t132 = t118 * t131;
t134 = cc(3) * bb(1);
t135 = t134 * ee(2);
t136 = t118 * t135;
t138 = t123 * t135;
t140 = t83 * t131;
t142 = t46 * ee(2);
t143 = t83 * t142;
t145 = t83 * t124;
t147 = t35 * ee(1);
t148 = t118 * t147;
t150 = t83 * t147;
t152 = t118 * t128;
t154 = t123 * t142;
t156 = t100 + t105 - t110 - t113 + t117 - t122 + t125 / 0.6e1 - t129 / 0.6e1 - t132 / 0.6e1 + t136 / 0.6e1 + t138 / 0.6e1 - t140 / 0.6e1 - t143 / 0.6e1 + t145 / 0.6e1 + t148 / 0.6e1 + t150 / 0.6e1 - t152 / 0.6e1 - t154 / 0.6e1;
t158 = t2 * t4;
t159 = t52 * dd(2);
t160 = t158 * t159;
t161 = t2 * cc(3);
t162 = t161 * cc(1);
t163 = bb(3) * dd(2);
t165 = t162 * t163 * ee(3);
t166 = t2 * cc(2);
t167 = t166 * cc(1);
t168 = bb(2) * dd(2);
t170 = t167 * t168 * ee(3);
t171 = bb(1) * dd(3);
t173 = t167 * t171 * ee(1);
t174 = t2 * t16;
t175 = bb(1) * dd(2);
t176 = t175 * ee(3);
t177 = t174 * t176;
t179 = t167 * t36 * dd(1);
t180 = t166 * cc(3);
t181 = bb(2) * dd(1);
t183 = t180 * t181 * ee(2);
t184 = t47 * dd(1);
t185 = t158 * t184;
t187 = t162 * t58 * dd(3);
t188 = bb(1) * ee(1);
t190 = t162 * t188 * dd(2);
t191 = bb(3) * dd(1);
t192 = t191 * ee(2);
t193 = t158 * t192;
t194 = t174 * t159;
t195 = -t160 - t165 - t170 - t173 + t177 + t179 - t183 - t185 + t187 + t190 + t193 - t194;
t196 = t174 * t192;
t197 = t2 * t10;
t198 = bb(1) * ee(2);
t199 = t198 * dd(3);
t200 = t197 * t199;
t201 = bb(3) * ee(3);
t203 = t180 * t201 * dd(1);
t204 = bb(2) * dd(3);
t205 = t204 * ee(1);
t206 = t158 * t205;
t207 = bb(3) * dd(3);
t209 = t180 * t207 * ee(1);
t210 = bb(2) * ee(1);
t212 = t180 * t210 * dd(2);
t213 = t197 * t184;
t214 = t197 * t205;
t215 = t174 * t199;
t216 = bb(2) * ee(2);
t218 = t167 * t216 * dd(3);
t219 = t197 * t176;
t220 = bb(1) * dd(1);
t222 = t162 * t220 * ee(2);
t223 = t196 - t200 + t203 + t206 - t209 + t212 - t213 + t214 - t215 + t218 + t219 - t222;
t225 = t174 * bb(1);
t227 = ee(2) * dd(3) * t1;
t228 = t225 * t227;
t229 = ee(3) * t1;
t231 = t162 * t163 * t229;
t232 = ee(1) * t1;
t234 = t180 * t207 * t232;
t235 = dd(2) * t1;
t237 = t180 * t210 * t235;
t238 = ee(2) * t1;
t240 = t162 * t220 * t238;
t241 = t158 * bb(2);
t243 = dd(3) * ee(1) * t1;
t244 = t241 * t243;
t245 = t174 * bb(3);
t247 = ee(1) * dd(2) * t1;
t248 = t245 * t247;
t250 = dd(1) * ee(2) * t1;
t251 = t245 * t250;
t252 = t197 * bb(2);
t254 = ee(3) * dd(1) * t1;
t255 = t252 * t254;
t256 = dd(3) * t1;
t258 = t162 * t58 * t256;
t259 = dd(1) * t1;
t261 = t180 * t201 * t259;
t263 = t167 * t171 * t232;
t264 = t228 + t231 + t234 - t237 + t240 - t244 + t248 - t251 + t255 - t258 - t261 + t263;
t265 = t158 * bb(3);
t266 = t265 * t247;
t268 = t167 * t216 * t256;
t270 = dd(2) * ee(3) * t1;
t271 = t225 * t270;
t273 = t167 * t168 * t229;
t274 = t265 * t250;
t275 = t241 * t254;
t276 = t252 * t243;
t277 = t197 * bb(1);
t278 = t277 * t270;
t280 = t162 * t188 * t235;
t282 = t167 * t36 * t259;
t284 = t180 * t181 * t238;
t285 = t277 * t227;
t286 = t266 - t268 - t271 + t273 - t274 + t275 - t276 - t278 - t280 - t282 + t284 + t285;
t288 = t161 * t89;
t289 = t158 * t120;
t290 = t2 * t101;
t291 = t290 * t74;
t292 = bb(1) * bb(3);
t294 = t167 * t292 * ee(1);
t295 = t2 * bb(1);
t296 = t295 * t98;
t297 = t2 * bb(3);
t298 = t297 * t108;
t299 = t2 * cc(1);
t300 = t299 * t103;
t302 = t162 * t84 * ee(3);
t304 = t180 * t292 * ee(3);
t305 = t2 * t71;
t306 = t305 * t74;
t307 = t2 * bb(2);
t308 = t307 * t115;
t309 = t307 * t68;
t311 = t167 * t84 * ee(2);
t312 = t197 * t85;
t313 = t2 * t77;
t314 = t313 * t93;
t315 = t313 * t80;
t316 = t295 * cc(1);
t317 = t316 * t128;
t318 = t307 * cc(2);
t319 = t318 * t135;
t320 = t288 + t289 + t291 + t294 - t296 + t298 - t300 + t302 - t304 - t306 - t308 + t309 - t311 - t312 + t314 - t315 - t317 + t319;
t321 = t305 * t128;
t322 = t77 * bb(2);
t323 = t2 * t322;
t324 = cc(1) * ee(3);
t325 = t323 * t324;
t326 = t313 * t142;
t327 = t101 * bb(1);
t328 = t2 * t327;
t329 = cc(2) * ee(3);
t330 = t328 * t329;
t331 = t290 * t124;
t332 = t323 * t63;
t333 = t313 * t135;
t334 = t328 * t42;
t335 = t290 * t128;
t336 = t71 * bb(3);
t337 = t2 * t336;
t338 = cc(2) * ee(1);
t339 = t337 * t338;
t340 = t305 * t135;
t341 = t305 * t124;
t342 = t290 * t147;
t343 = t305 * t131;
t344 = t313 * t147;
t345 = t313 * t131;
t346 = cc(1) * ee(2);
t347 = t337 * t346;
t348 = t290 * t142;
t349 = t321 - t325 + t326 + t330 - t331 + t332 - t333 - t334 + t335 - t339 - t340 - t341 - t342 + t343 - t344 + t345 + t347 + t348;
t350 = t288 / 0.6e1;
t351 = t289 / 0.6e1;
t352 = t291 / 0.6e1;
t353 = t296 / 0.6e1;
t354 = t298 / 0.6e1;
t355 = t300 / 0.6e1;
t356 = t306 / 0.6e1;
t357 = t308 / 0.6e1;
t358 = t309 / 0.6e1;
t359 = t312 / 0.6e1;
t360 = t314 / 0.6e1;
t361 = t315 / 0.6e1;
t363 = t350 + t351 + t352 - t353 + t354 - t355 - t356 - t357 + t358 - t359 + t360 - t361 + t321 / 0.24e2;
t376 = t174 * t142 / 0.6e1;
t378 = t174 * t128 / 0.6e1;
t380 = t158 * t131 / 0.6e1;
t381 = t326 / 0.24e2 - t331 / 0.24e2 - t333 / 0.24e2 + t335 / 0.24e2 - t340 / 0.24e2 - t341 / 0.24e2 - t342 / 0.24e2 + t343 / 0.24e2 - t344 / 0.24e2 + t345 / 0.24e2 + t348 / 0.24e2 + t376 + t378 + t380;
t383 = t197 * t147;
t384 = t197 * t124;
t385 = t158 * t128;
t386 = t158 * t135;
t387 = t158 * t147;
t388 = t174 * t135;
t389 = t174 * t124;
t390 = t197 * t131;
t391 = t197 * t142;
t392 = -t383 - t384 + t385 - t386 - t387 - t388 - t389 + t390 + t391 + t294 + t302 - t304 - t311;
t393 = t317 / 0.6e1;
t394 = t319 / 0.6e1;
t401 = t2 * t5;
t403 = t401 * t47 / 0.6e1;
t404 = t2 * t17;
t406 = t404 * t36 / 0.6e1;
t407 = t2 * t11;
t409 = t407 * t198 / 0.6e1;
t411 = t407 * t210 / 0.6e1;
t413 = t404 * t52 / 0.6e1;
t415 = t401 * t58 / 0.6e1;
t416 = -t393 + t394 - t325 / 0.24e2 + t330 / 0.24e2 + t332 / 0.24e2 - t334 / 0.24e2 - t339 / 0.24e2 + t347 / 0.24e2 - t403 + t406 - t409 + t411 - t413 + t415;
t419 = -t160 + t177 - t185 + t193 - t194 + t196 - t200 + t206 - t213 + t214 - t215 + t219 + t288 + t289 + t291;
t432 = -t296 / 0.12e2 + t298 / 0.12e2 - t300 / 0.12e2 - t306 / 0.12e2 - t308 / 0.12e2 + t309 / 0.12e2 - t312 / 0.12e2 + t314 / 0.12e2 - t315 / 0.12e2 + t376 + t378 + t380 - t383 / 0.6e1 - t384 / 0.6e1 + t385 / 0.6e1;
t440 = t46 * dd(2);
t441 = t174 * t440;
t451 = -t386 / 0.6e1 - t387 / 0.6e1 - t388 / 0.6e1 - t389 / 0.6e1 + t390 / 0.6e1 + t391 / 0.6e1 - t441 / 0.12e2 - t165 / 0.12e2 - t170 / 0.12e2 - t173 / 0.12e2 + t179 / 0.12e2 - t183 / 0.12e2 + t187 / 0.12e2 + t190 / 0.12e2 + t203 / 0.12e2;
t462 = t297 * cc(3);
t463 = t462 * t199;
t465 = t462 * t176;
t467 = t41 * dd(3);
t468 = t462 * t467;
t470 = t134 * dd(2);
t471 = t318 * t470;
t473 = t318 * t199;
t475 = -t209 / 0.12e2 + t212 / 0.12e2 + t218 / 0.12e2 - t222 / 0.12e2 + t294 / 0.12e2 + t302 / 0.12e2 - t304 / 0.12e2 - t311 / 0.12e2 - t317 / 0.12e2 + t319 / 0.12e2 + t463 / 0.24e2 - t465 / 0.24e2 + t468 / 0.24e2 - t471 / 0.24e2 + t473 / 0.24e2;
t478 = t318 * t176;
t481 = t162 * t84 * dd(3);
t484 = t167 * t84 * dd(2);
t486 = t127 * dd(1);
t487 = t316 * t486;
t489 = t316 * t184;
t491 = t316 * t205;
t493 = t462 * t184;
t495 = t462 * t205;
t498 = t167 * t292 * dd(1);
t500 = t318 * t159;
t502 = t318 * t192;
t504 = t316 * t159;
t506 = t316 * t192;
t508 = t174 * t486;
t511 = t161 * t88 * dd(1);
t513 = -t478 / 0.24e2 - t481 / 0.24e2 + t484 / 0.24e2 + t487 / 0.24e2 + t489 / 0.24e2 - t491 / 0.24e2 + t493 / 0.24e2 - t495 / 0.24e2 - t498 / 0.24e2 + t500 / 0.24e2 - t502 / 0.24e2 + t504 / 0.24e2 - t506 / 0.24e2 - t508 / 0.12e2 - t511 / 0.24e2;
t514 = t35 * dd(1);
t515 = t197 * t514;
t518 = t197 * t84 * dd(1);
t520 = t57 * dd(3);
t521 = t197 * t520;
t523 = cc(3) * dd(1);
t524 = t523 * ee(2);
t525 = t290 * t524;
t527 = t63 * dd(2);
t528 = t290 * t527;
t530 = t313 * t524;
t532 = cc(1) * dd(2);
t533 = t532 * ee(3);
t534 = t313 * t533;
t536 = t346 * dd(3);
t537 = t313 * t536;
t539 = t305 * t533;
t541 = t305 * t536;
t543 = t158 * t467;
t546 = t299 * t102 * dd(3);
t548 = t158 * t486;
t551 = t158 * t119 * dd(3);
t553 = t158 * t514;
t555 = t515 / 0.12e2 + t518 / 0.24e2 + t521 / 0.12e2 + t525 / 0.24e2 - t528 / 0.24e2 + t530 / 0.24e2 + t534 / 0.24e2 - t537 / 0.24e2 + t539 / 0.24e2 - t541 / 0.24e2 - t543 / 0.12e2 + t546 / 0.24e2 - t548 / 0.12e2 - t551 / 0.24e2 + t553 / 0.12e2;
t557 = t158 * t470;
t559 = cc(2) * dd(3);
t560 = t559 * ee(1);
t561 = t305 * t560;
t563 = t329 * dd(1);
t564 = t305 * t563;
t566 = t290 * t560;
t568 = t290 * t563;
t570 = t174 * t470;
t572 = t174 * t520;
t575 = t313 * t92 * dd(3);
t577 = t73 * dd(2);
t578 = t305 * t577;
t581 = t297 * t107 * dd(2);
t584 = t307 * t114 * dd(3);
t587 = t307 * t67 * dd(1);
t590 = t313 * t79 * dd(1);
t592 = t290 * t577;
t595 = t295 * t97 * dd(2);
t597 = t557 / 0.12e2 + t561 / 0.24e2 - t564 / 0.24e2 + t566 / 0.24e2 - t568 / 0.24e2 + t570 / 0.12e2 + t572 / 0.12e2 - t575 / 0.24e2 + t578 / 0.24e2 - t581 / 0.24e2 + t584 / 0.24e2 - t587 / 0.24e2 + t590 / 0.24e2 - t592 / 0.24e2 + t595 / 0.24e2;
t598 = t313 * t527;
t601 = t197 * t467 / 0.12e2;
t603 = t197 * t440 / 0.12e2;
t605 = t401 * t204 / 0.12e2;
t607 = t404 * t171 / 0.12e2;
t609 = t407 * t181 / 0.12e2;
t611 = t404 * t191 / 0.12e2;
t613 = t401 * t163 / 0.12e2;
t615 = t407 * t175 / 0.12e2;
t616 = -t598 / 0.24e2 - t601 - t603 - t403 + t406 - t409 + t411 - t413 + t415 + t605 - t607 - t609 + t611 - t613 + t615;
t621 = t162 * t84 * t256;
t624 = t316 * t127 * t259;
t627 = t318 * t134 * t235;
t630 = t462 * t41 * t256;
t633 = t167 * t84 * t235;
t636 = t167 * t292 * t259;
t638 = t78 * t440;
t640 = t78 * t467;
t642 = t111 * t440;
t644 = t72 * t486;
t646 = t72 * t520;
t648 = t111 * t486;
t650 = t111 * t520;
t652 = t78 * t470;
t654 = t72 * t470;
t656 = t72 * t467;
t658 = t78 * t514;
t660 = t111 * t514;
t662 = t621 / 0.12e2 - t624 / 0.12e2 + t627 / 0.12e2 - t630 / 0.12e2 - t633 / 0.12e2 + t636 / 0.12e2 + t638 / 0.24e2 + t640 / 0.24e2 + t642 / 0.24e2 + t644 / 0.24e2 - t646 / 0.24e2 + t648 / 0.24e2 - t650 / 0.24e2 - t652 / 0.24e2 - t654 / 0.24e2 + t656 / 0.24e2 - t658 / 0.24e2 - t660 / 0.24e2;
t663 = t307 * t16;
t664 = t171 * t1;
t665 = t663 * t664;
t669 = t180 * t71 * dd(1) * t1;
t671 = t290 * cc(3);
t673 = t671 * t532 * t1;
t675 = t241 * t664;
t679 = t297 * t10 * t175 * t1;
t683 = t295 * t4 * t163 * t1;
t685 = t305 * cc(1);
t686 = cc(3) * dd(2);
t688 = t685 * t686 * t1;
t690 = t313 * cc(3);
t691 = cc(2) * dd(1);
t693 = t690 * t691 * t1;
t697 = t167 * t101 * dd(3) * t1;
t699 = t191 * t1;
t700 = t663 * t699;
t702 = t313 * cc(1);
t704 = t702 * t559 * t1;
t706 = t252 * t699;
t710 = t3 * t327 * cc(3) * dd(2);
t714 = t3 * t322 * cc(1) * dd(3);
t718 = t3 * t327 * cc(2) * dd(3);
t722 = t3 * t336 * cc(1) * dd(2);
t726 = t3 * t322 * cc(3) * dd(1);
t730 = t3 * t336 * cc(2) * dd(1);
t732 = -t665 / 0.12e2 + t669 / 0.12e2 + t673 / 0.12e2 + t675 / 0.12e2 + t679 / 0.12e2 - t683 / 0.12e2 - t688 / 0.12e2 - t693 / 0.12e2 - t697 / 0.12e2 + t700 / 0.12e2 + t704 / 0.12e2 - t706 / 0.12e2 - t710 / 0.24e2 - t714 / 0.24e2 + t718 / 0.24e2 + t722 / 0.24e2 + t726 / 0.24e2 - t730 / 0.24e2;
t740 = t350 + t351 + t352 - t353 + t354 - t355 - t356 - t357 + t358 - t359 + t360 - t361 + t321 / 0.12e2 + t326 / 0.12e2 - t331 / 0.12e2 - t333 / 0.12e2 + t335 / 0.12e2 - t340 / 0.12e2;
t757 = -t341 / 0.12e2 - t342 / 0.12e2 + t343 / 0.12e2 - t344 / 0.12e2 + t345 / 0.12e2 + t348 / 0.12e2 + t294 / 0.6e1 + t302 / 0.6e1 - t304 / 0.6e1 - t311 / 0.6e1 - t393 + t394 + t468 / 0.12e2 - t471 / 0.12e2 - t481 / 0.12e2 + t484 / 0.12e2 + t487 / 0.12e2 - t498 / 0.12e2;
t770 = t595 / 0.12e2;
t771 = t290 * t440;
t773 = t290 * t486;
t775 = t313 * t467;
t777 = t313 * t440;
t779 = t305 * t520;
t781 = t305 * t470;
t783 = -t511 / 0.12e2 + t518 / 0.12e2 + t546 / 0.12e2 - t551 / 0.12e2 - t575 / 0.12e2 + t578 / 0.12e2 - t581 / 0.12e2 + t584 / 0.12e2 - t587 / 0.12e2 + t590 / 0.12e2 - t592 / 0.12e2 + t770 - t771 / 0.24e2 - t773 / 0.24e2 - t775 / 0.24e2 - t777 / 0.24e2 + t779 / 0.24e2 + t781 / 0.24e2;
t784 = t305 * t486;
t786 = t305 * t467;
t788 = t290 * t514;
t790 = t290 * t520;
t792 = t313 * t514;
t794 = t313 * t470;
t802 = t337 * t691;
t804 = t323 * t523;
t806 = t328 * t686;
t808 = t337 * t532;
t810 = t328 * t559;
t813 = t323 * cc(1) * dd(3);
t815 = -t784 / 0.24e2 - t786 / 0.24e2 + t788 / 0.24e2 + t790 / 0.24e2 + t792 / 0.24e2 + t794 / 0.24e2 - t325 / 0.12e2 + t330 / 0.12e2 + t332 / 0.12e2 - t334 / 0.12e2 - t339 / 0.12e2 + t347 / 0.12e2 + t802 / 0.24e2 - t804 / 0.24e2 + t806 / 0.24e2 - t808 / 0.24e2 - t810 / 0.24e2 + t813 / 0.24e2;
t818 = -t784 + t802 - t771 - t804 + t790 - t777 + t794 + t806 - t810 - t808 + t813 - t775 + t781 + t792 + t788 + t779 - t786 - t773;
t819 = t305 * cc(3);
t820 = t210 * t1;
t821 = t819 * t820;
t823 = t313 * cc(2);
t824 = t36 * t1;
t825 = t823 * t824;
t827 = t198 * t1;
t828 = t690 * t827;
t830 = t47 * t1;
t831 = t685 * t830;
t833 = t305 * cc(2);
t834 = t833 * t824;
t836 = t52 * t1;
t837 = t823 * t836;
t839 = t290 * cc(1);
t840 = t58 * t1;
t841 = t839 * t840;
t843 = t290 * cc(2);
t844 = t843 * t836;
t846 = t702 * t840;
t848 = t839 * t830;
t850 = t671 * t820;
t852 = t819 * t827;
t860 = -t821 / 0.24e2 - t825 / 0.24e2 + t828 / 0.24e2 + t831 / 0.24e2 - t834 / 0.24e2 + t837 / 0.24e2 - t841 / 0.24e2 + t844 / 0.24e2 - t846 / 0.24e2 + t848 / 0.24e2 - t850 / 0.24e2 + t852 / 0.24e2 + t638 / 0.48e2 + t640 / 0.48e2 + t642 / 0.48e2 + t644 / 0.48e2 - t646 / 0.48e2 + t648 / 0.48e2;
t874 = t337 * t346 * t1;
t877 = t323 * t324 * t1;
t880 = t328 * t329 * t1;
t883 = t323 * t63 * t1;
t886 = t328 * t42 * t1;
t889 = t337 * t338 * t1;
t891 = -t650 / 0.48e2 - t652 / 0.48e2 - t654 / 0.48e2 + t656 / 0.48e2 - t658 / 0.48e2 - t660 / 0.48e2 - t710 / 0.48e2 - t714 / 0.48e2 + t718 / 0.48e2 + t722 / 0.48e2 + t726 / 0.48e2 - t730 / 0.48e2 - t874 / 0.24e2 + t877 / 0.24e2 - t880 / 0.24e2 - t883 / 0.24e2 + t886 / 0.24e2 + t889 / 0.24e2;
t893 = -t441 + t468 - t471 - t481 + t484 + t487 - t498 - t508 - t511 + t515 + t518 + t521 - t543;
t894 = t546 - t548 - t551 + t553 + t557 + t570 + t572 - t575 + t578 - t581 + t584 - t587 + t590 - t592;
t906 = t770 - t601 - t603 - t771 / 0.48e2 - t773 / 0.48e2 - t775 / 0.48e2 - t777 / 0.48e2 + t779 / 0.48e2 + t781 / 0.48e2 - t784 / 0.48e2 - t786 / 0.48e2 + t788 / 0.48e2 + t790 / 0.48e2;
t915 = t792 / 0.48e2 + t794 / 0.48e2 + t605 - t607 - t609 + t611 - t613 + t615 + t802 / 0.48e2 - t804 / 0.48e2 + t806 / 0.48e2 - t808 / 0.48e2 - t810 / 0.48e2 + t813 / 0.48e2;
t930 = t123 * t470;
t932 = -t821 / 0.72e2 - t825 / 0.72e2 + t828 / 0.72e2 + t831 / 0.72e2 - t834 / 0.72e2 + t837 / 0.72e2 - t841 / 0.72e2 + t844 / 0.72e2 - t846 / 0.72e2 + t848 / 0.72e2 - t850 / 0.72e2 + t852 / 0.72e2 - t930 / 0.36e2;
t933 = t123 * t486;
t935 = t118 * t470;
t937 = t83 * t514;
t939 = t123 * t520;
t941 = t123 * t440;
t943 = t83 * t440;
t945 = t118 * t514;
t947 = t118 * t467;
t949 = t83 * t520;
t951 = t118 * t486;
t953 = t83 * t467;
t958 = t933 / 0.36e2 - t935 / 0.36e2 - t937 / 0.36e2 - t939 / 0.36e2 + t941 / 0.36e2 + t943 / 0.36e2 - t945 / 0.36e2 + t947 / 0.36e2 - t949 / 0.36e2 + t951 / 0.36e2 + t953 / 0.36e2 + t8 / 0.18e2 - t14 / 0.18e2 - t20 / 0.18e2;
t973 = t24 / 0.18e2 - t28 / 0.18e2 + t32 / 0.18e2 + t38 / 0.18e2 - t44 / 0.18e2 - t49 / 0.18e2 - t54 / 0.18e2 + t60 / 0.18e2 + t65 / 0.18e2 + t621 / 0.36e2 - t624 / 0.36e2 + t627 / 0.36e2 - t630 / 0.36e2;
t988 = -t633 / 0.36e2 + t636 / 0.36e2 - t69 / 0.18e2 + t75 / 0.18e2 + t81 / 0.18e2 + t86 / 0.18e2 - t90 / 0.18e2 - t94 / 0.18e2 + t99 / 0.18e2 + t104 / 0.18e2 - t109 / 0.18e2 - t112 / 0.18e2 + t116 / 0.18e2 - t121 / 0.18e2;
t1004 = t125 / 0.18e2 - t129 / 0.18e2 - t132 / 0.18e2 + t136 / 0.18e2 + t138 / 0.18e2 - t140 / 0.18e2 - t143 / 0.18e2 + t145 / 0.18e2 + t148 / 0.18e2 + t150 / 0.18e2 - t152 / 0.18e2 - t154 / 0.18e2 + t638 / 0.144e3;
t1019 = t640 / 0.144e3 + t642 / 0.144e3 + t644 / 0.144e3 - t646 / 0.144e3 + t648 / 0.144e3 - t650 / 0.144e3 - t652 / 0.144e3 - t654 / 0.144e3 + t656 / 0.144e3 - t658 / 0.144e3 - t660 / 0.144e3 - t665 / 0.36e2 + t669 / 0.36e2 + t673 / 0.36e2;
t1034 = t675 / 0.36e2 + t679 / 0.36e2 - t683 / 0.36e2 - t688 / 0.36e2 - t693 / 0.36e2 - t697 / 0.36e2 + t700 / 0.36e2 + t704 / 0.36e2 - t706 / 0.36e2 - t710 / 0.144e3 - t714 / 0.144e3 + t718 / 0.144e3 + t722 / 0.144e3;
t1044 = t3 * t26 * dd(2);
t1047 = t3 * t22 * dd(2);
t1050 = t3 * t18 * dd(3);
t1053 = t3 * t6 * dd(3);
t1056 = t3 * t12 * dd(1);
t1059 = t3 * t30 * dd(1);
t1061 = t726 / 0.144e3 - t730 / 0.144e3 - t874 / 0.72e2 + t877 / 0.72e2 - t880 / 0.72e2 - t883 / 0.72e2 + t886 / 0.72e2 + t889 / 0.72e2 + t1044 / 0.36e2 - t1047 / 0.36e2 + t1050 / 0.36e2 - t1053 / 0.36e2 + t1056 / 0.36e2 - t1059 / 0.36e2;
t1066 = -t491 + t493 - t495 - t498 + t500 - t502 + t504 - t506 - t511 + t518 + t525;
t1069 = t566 - t568 - t575 + t578 - t581 + t584 - t587 + t590 - t592 + t595 - t598;
t1072 = t671 * t250;
t1073 = t671 * t247;
t1074 = t690 * t250;
t1075 = t702 * t270;
t1076 = t685 * t270;
t1077 = t685 * t227;
t1078 = t833 * t243;
t1079 = t833 * t254;
t1080 = t843 * t243;
t1081 = t843 * t254;
t1082 = t690 * t247;
t1083 = t702 * t227;
t1084 = t198 * t256;
t1085 = t462 * t1084;
t1086 = t175 * t229;
t1087 = t462 * t1086;
t1088 = t318 * t1084;
t1089 = -t1072 + t1073 - t1074 - t1075 - t1076 + t1077 - t1078 + t1079 - t1080 + t1081 + t1082 + t1083 - t1085 + t1087 - t1088;
t1090 = t318 * t1086;
t1092 = t47 * t259;
t1093 = t316 * t1092;
t1095 = t204 * t232;
t1096 = t316 * t1095;
t1098 = t462 * t1092;
t1101 = t462 * t1095 / 0.24e2;
t1102 = t52 * t235;
t1104 = t318 * t1102 / 0.24e2;
t1105 = t191 * t238;
t1107 = t318 * t1105 / 0.24e2;
t1109 = t316 * t1102 / 0.24e2;
t1111 = t316 * t1105 / 0.24e2;
t1112 = t1090 / 0.24e2 - t1093 / 0.24e2 + t1096 / 0.24e2 - t1098 / 0.24e2 + t1101 - t1104 + t1107 - t1109 + t1111 + t39 - t45 - t50 - t55 + t61 + t66;
t1114 = t621 / 0.24e2;
t1115 = t624 / 0.24e2;
t1116 = t627 / 0.24e2;
t1117 = t630 / 0.24e2;
t1118 = t633 / 0.24e2;
t1119 = t636 / 0.24e2;
t1120 = t1114 - t1115 + t1116 - t1117 - t1118 + t1119 - t70 + t76 + t82 + t87 - t91 - t95 + t100 + t105 - t110;
t1121 = t665 / 0.24e2;
t1122 = t669 / 0.24e2;
t1123 = t673 / 0.24e2;
t1124 = t675 / 0.24e2;
t1125 = t679 / 0.24e2;
t1126 = t683 / 0.24e2;
t1127 = t688 / 0.24e2;
t1128 = t693 / 0.24e2;
t1129 = t697 / 0.24e2;
t1130 = t700 / 0.24e2;
t1131 = t704 / 0.24e2;
t1132 = t706 / 0.24e2;
t1133 = -t113 + t117 - t122 - t1121 + t1122 + t1123 + t1124 + t1125 - t1126 - t1127 - t1128 - t1129 + t1130 + t1131 - t1132;
t1148 = t951 / 0.12e2 + t953 / 0.12e2 - t1072 / 0.24e2 + t1073 / 0.24e2 - t1074 / 0.24e2 - t1075 / 0.24e2 - t1076 / 0.24e2 + t1077 / 0.24e2 - t1078 / 0.24e2 + t1079 / 0.24e2 - t1080 / 0.24e2;
t1157 = t1101 - t1104 + t1107 - t1109 + t1111 + t231 / 0.12e2 + t234 / 0.12e2 - t237 / 0.12e2 + t240 / 0.12e2 - t258 / 0.12e2 - t261 / 0.12e2;
t1176 = -t1118 + t1119 + t228 / 0.12e2 - t244 / 0.12e2 + t248 / 0.12e2 - t251 / 0.12e2 + t255 / 0.12e2 + t266 / 0.12e2 - t271 / 0.12e2 - t274 / 0.12e2 + t275 / 0.12e2;
t1188 = -t1128 - t1129 + t1130 + t1131 - t1132 + t1044 / 0.12e2 - t1047 / 0.12e2 + t1050 / 0.12e2 - t1053 / 0.12e2 + t1056 / 0.12e2 - t1059 / 0.12e2;
t1210 = -t821 / 0.12e2 - t825 / 0.12e2 + t828 / 0.12e2 + t831 / 0.12e2 - t834 / 0.12e2 + t837 / 0.12e2 - t841 / 0.12e2 + t844 / 0.12e2 - t846 / 0.12e2 + t848 / 0.12e2 - t850 / 0.12e2 + t852 / 0.12e2 + t38 / 0.6e1 - t44 / 0.6e1 - t49 / 0.6e1 - t54 / 0.6e1 + t60 / 0.6e1 + t65 / 0.6e1;
t1229 = -t69 / 0.6e1 + t75 / 0.6e1 + t81 / 0.6e1 + t86 / 0.6e1 - t90 / 0.6e1 - t94 / 0.6e1 + t99 / 0.6e1 + t104 / 0.6e1 - t109 / 0.6e1 - t112 / 0.6e1 + t116 / 0.6e1 - t121 / 0.6e1 - t874 / 0.12e2 + t877 / 0.12e2 - t880 / 0.12e2 - t883 / 0.12e2 + t886 / 0.12e2 + t889 / 0.12e2;
%
coef(1) = t96 + t156;
coef(2) = t195 / 0.4e1 + t223 / 0.4e1;
coef(3) = t264 / 0.12e2 + t286 / 0.12e2;
coef(4) = t320 / 0.4e1;
coef(5) = t349 / 0.8e1;
coef(6) = t363 + t381 + t392 / 0.6e1 + t416;
coef(7) = t419 / 0.12e2 + t432 + t451 + t475 + t513 + t555 + t597 + t616;
coef(8) = t662 + t732;
coef(9) = t740 + t757 + t783 + t815;
coef(10) = t818 / 0.16e2;
coef(11) = t860 + t891;
coef(12) = t893 / 0.12e2 + t894 / 0.12e2 + t906 + t915;
coef(13) = t932 + t958 + t973 + t988 + t1004 + t1019 + t1034 + t1061;
coef(14) = t463 / 0.8e1 - t465 / 0.8e1 + t468 / 0.8e1 - t471 / 0.8e1 + t473 / 0.8e1 - t478 / 0.8e1 - t481 / 0.8e1 + t484 / 0.8e1 + t487 / 0.8e1 + t489 / 0.8e1 + t1066 / 0.8e1 - t528 / 0.8e1 + t530 / 0.8e1 + t534 / 0.8e1 - t537 / 0.8e1 + t539 / 0.8e1 - t541 / 0.8e1 + t546 / 0.8e1 - t551 / 0.8e1 + t561 / 0.8e1 - t564 / 0.8e1 + t1069 / 0.8e1;
coef(15) = t1089 / 0.24e2 + t1112 + t1120 + t1133;
coef(16) = t1157 + t1176 + t1188 + t263 / 0.12e2 - t268 / 0.12e2 + t273 / 0.12e2 - t276 / 0.12e2 - t278 / 0.12e2 - t280 / 0.12e2 - t282 / 0.12e2 + t284 / 0.12e2 + t285 / 0.12e2 - t930 / 0.12e2 + t933 / 0.12e2 - t935 / 0.12e2 - t937 / 0.12e2 - t939 / 0.12e2 + t941 / 0.12e2 + t943 / 0.12e2 - t945 / 0.12e2 + t947 / 0.12e2 - t949 / 0.12e2 + t1081 / 0.24e2 + t1082 / 0.24e2 + t1083 / 0.24e2 - t1085 / 0.24e2 + t1087 / 0.24e2 - t1088 / 0.24e2 + t1090 / 0.24e2 - t1093 / 0.24e2 + t1096 / 0.24e2 - t1098 / 0.24e2 + t1114 - t1115 + t1116 - t1117 - t1121 + t1122 + t1123 + t1124 + t1125 - t1126 - t1127 + t1148;
coef(17) = t1210 + t1229;