
Save New Duplicate & Edit Just Text Twitter
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
313
314
315
316
317
318
319
320
321
322
323
324
325
326
327
328
329
330
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
PRINT "welcome to Werewolf public release 1.0.2 beta."
PRINT "this program is open source"
PRINT "report bugs to james@linuxemails.com"
PRINT
PRINT
INPUT "hit enter to start"; lsidhfoisad$
PRINT "you will need to give your bot opponent names."
INPUT "name for bot 1"; name1$
INPUT "name for bot 2"; name2$
INPUT "name for bot 3"; name3$
RANDOMIZE TIMER
LET playerchance = INT(RND * 4 + 1)
SELECT CASE playerchance
    CASE 1
        LET hp = 1
    CASE 2
        LET hp = 1
    CASE 3
        LET hp = 2
    CASE 4
        LET hp = 3
END SELECT
LET botchance = INT(RND * 6 + 1)
SELECT CASE hp
    CASE 1
        SELECT CASE botchance
            CASE 1
                LET b1 = 1
                LET b2 = 2
                LET b3 = 3
            CASE 2
                LET b1 = 3
                LET b2 = 2
                LET b3 = 1
            CASE 3
                LET b1 = 1
                LET b2 = 3
                LET b3 = 2
            CASE 4
                LET b1 = 3
                LET b2 = 1
                LET b3 = 2
            CASE 5
                LET b1 = 2
                LET b2 = 1
                LET b3 = 3
            CASE 6
                LET b1 = 2
                LET b2 = 3
                LET b3 = 1
        END SELECT
    CASE 2
        SELECT CASE botchance
            CASE 1
                LET b1 = 1
                LET b2 = 1
                LET b3 = 3
            CASE 2
                LET b1 = 3
                LET b2 = 1
                LET b3 = 1
            CASE 3
                LET b1 = 1
                LET b2 = 3
                LET b3 = 1
            CASE 4
                LET b1 = 3
                LET b2 = 1
                LET b3 = 1
            CASE 5
                LET b1 = 1
                LET b2 = 1
                LET b3 = 3
            CASE 6
                LET b1 = 3
                LET b2 = 3
                LET b3 = 1
        END SELECT
    CASE 3
        SELECT CASE botchance
            CASE 1
                LET b1 = 1
                LET b2 = 2
                LET b3 = 1
            CASE 2
                LET b1 = 1
                LET b2 = 2
                LET b3 = 1
            CASE 3
                LET b1 = 1
                LET b2 = 1
                LET b3 = 2
            CASE 4
                LET b1 = 1
                LET b2 = 1
                LET b3 = 2
            CASE 5
                LET b1 = 2
                LET b2 = 1
                LET b3 = 1
            CASE 6
                LET b1 = 2
                LET b2 = 1
                LET b3 = 1
        END SELECT
END SELECT





SELECT CASE hp
    CASE 1
        INPUT "you are villager and have nothing to do in the night. hit enter to continue"; blahblahblah12321343$
    CASE 2
        PRINT "you are seer. chose a player to see"
        PRINT "you can use the results you recieve here to influence your decision on who to lynch later."
        PRINT "input the number of the player from this chart, and hit enter"
        PRINT "1                  "; name1$
        PRINT "2                  "; name2$
        PRINT "3                  "; name3$
        101 INPUT "player to see"; see
        SELECT CASE see
            CASE 1
                SELECT CASE b1
                    CASE 1
                        PRINT name1$; "is a villager"
                    CASE 3
                        PRINT name1$; "is a wolf. you win!"
                        SLEEP 100000
                END SELECT
            CASE 2
                SELECT CASE b2
                    CASE 1
                        PRINT name2$; "is a villager"
                    CASE 3
                        PRINT name2$; "is a wolf. you win!"
                        SLEEP 100000
                END SELECT
            CASE 3
                SELECT CASE b3
                    CASE 1
                        PRINT name3$; "is a villager"
                    CASE 3
                        PRINT name3$; "is a wolf. you win!"
                        SLEEP 100000
                END SELECT
            CASE ELSE
                INPUT "that was an invalid player number. hit enter to try again"; blkasiodhfreio$
                CLS
                GOTO 101
        END SELECT
    CASE 3
        102 PRINT "you are wolf. select player to eliminate"
        PRINT "1                "; name1$
        PRINT "2                "; name2$
        PRINT "3                "; name3$
        INPUT "select player number"; killed
        SELECT CASE killed
            CASE 1
                PRINT "you have selected "; name1$; " to be eliminated."
            CASE 2
                PRINT "you have selected "; name2$; " to be eliminated."
            CASE 3
                PRINT "you have selected "; name3$; " to be eliminated."

        END SELECT
        SELECT CASE killed
            CASE 1
            CASE 2
            CASE 3
            CASE ELSE
                INPUT "invalid number. hit enter to continue"; lksahfoi$
                CLS
                GOTO 102
        END SELECT
END SELECT
PRINT
PRINT
PRINT
RANDOMIZE TIMER
LET vilfate = INT(RND * 2 + 1)
SELECT CASE hp
    CASE 1
        IF b1 = 3 THEN LET botwolf = 1
        IF b2 = 3 THEN LET botwolf = 2
        IF b3 = 3 THEN LET botwolf = 3
        SELECT CASE botwolf
            CASE 1
                SELECT CASE vilfate
                    CASE 1
                        LET killedv = 2
                    CASE 2
                        LET killedv = 3
                END SELECT
            CASE 2
                SELECT CASE vilfate
                    CASE 1
                        LET killedv = 1
                    CASE 2
                        LET killedv = 3
                END SELECT
            CASE 3
                SELECT CASE vilfate
                    CASE 1
                        LET killedv = 1
                    CASE 2
                        LET killedv = 2
                END SELECT
        END SELECT
    CASE 2
        IF b1 = 3 THEN LET botwolf = 1
        IF b2 = 3 THEN LET botwolf = 2
        IF b3 = 3 THEN LET botwolf = 3
        SELECT CASE botwolf
            CASE 1
                SELECT CASE vilfate
                    CASE 1
                        LET killedv = 2
                    CASE 2
                        LET killedv = 3
                END SELECT
            CASE 2
                SELECT CASE vilfate
                    CASE 1
                        LET killedv = 1
                    CASE 2
                        LET killedv = 3
                END SELECT
            CASE 3
                SELECT CASE vilfate
                    CASE 1
                        LET killedv = 1
                    CASE 2
                        LET killedv = 2
                END SELECT
        END SELECT
    CASE 3
        PRINT
END SELECT
SELECT CASE hp
    CASE 1
        SELECT CASE killedv
            CASE 1
                PRINT "the wolf has eliminated"; name1$
                700 PRINT "chose who to eliminate, hopefully he is the wolf."
                PRINT "1               "; name2$
                PRINT "2               "; name3$
                INPUT "input player number to eliminate"; wolfelim
                SELECT CASE wolfelim
                    CASE 1
                        LET welm = 2
                    CASE 2
                        LET welm = 3
                    CASE ELSE
                        INPUT "invalid option, hit enter to try again"; blaskdjfio$
                        PRINT
                        PRINT
                        GOTO 700
                END SELECT

            CASE 2
                701 PRINT "the wolf has eliminated"; name2$
                PRINT "chose who to eliminate, hopefully he is the wolf."
                PRINT "1               "; name1$
                PRINT "2               "; name3$
                INPUT "input player number to eliminate"; wolfelim
                SELECT CASE wolfelim
                    CASE 1
                        LET welm = 1
                    CASE 2
                        LET welm = 3
                    CASE ELSE
                        INPUT "invalid option, hit enter to try again"; blaskdjfio$
                        PRINT
                        PRINT
                        GOTO 701
                END SELECT
            CASE 3
                702 PRINT "the wolf has eliminated"; name3$
                PRINT "chose who to eliminate, hopefully he is the wolf."
                PRINT "1               "; name1$
                PRINT "2               "; name2$
                INPUT "input player number to eliminate"; wolfelim
                SELECT CASE wolfelim
                    CASE 1
                        LET welm = 1
                    CASE 2
                        LET welm = 2
                    CASE ELSE
                        INPUT "invalid option, hit enter to try again"; blaskdjfio$
                        PRINT
                        PRINT
                        GOTO 702
                END SELECT
        END SELECT
    CASE 2
        SELECT CASE killedv
            CASE 1
                PRINT "the wolf has eliminated"; name1$
                800 PRINT "chose who to eliminate, hopefully he is the wolf."
                PRINT "1               "; name2$
                PRINT "2               "; name3$
                INPUT "input player number to eliminate"; wolfelim
                SELECT CASE wolfelim
                    CASE 1
                        LET welm = 2
                    CASE 2
                        LET welm = 3
                    CASE ELSE
                        INPUT "invalid option, hit enter to try again"; blaskdjfio$
                        PRINT
                        PRINT
                        GOTO 800
                END SELECT

            CASE 2
                801 PRINT "the wolf has eliminated"; name2$
                PRINT "chose who to eliminate, hopefully he is the wolf."
                PRINT "1               "; name1$
                PRINT "2               "; name3$
                INPUT "input player number to eliminate"; wolfelim
                SELECT CASE wolfelim
                    CASE 1
                        LET welm = 1
                    CASE 2
                        LET welm = 3
                    CASE ELSE
                        INPUT "invalid option, hit enter to try again"; blaskdjfio$
                        PRINT
                        PRINT
                        GOTO 801
                END SELECT
            CASE 3
                802 PRINT "the wolf has eliminated"; name3$
                PRINT "chose who to eliminate, hopefully he is the wolf."
                PRINT "1               "; name1$
                PRINT "2               "; name2$
                INPUT "input player number to eliminate"; wolfelim
                SELECT CASE wolfelim
                    CASE 1
                        LET welm = 1
                    CASE 2
                        LET welm = 2
                    CASE ELSE
                        INPUT "invalid option, hit enter to try again"; blaskdjfio$
                        PRINT
                        PRINT
                        GOTO 802
                END SELECT
        END SELECT
    CASE 3
        PRINT
END SELECT
SELECT CASE hp
    CASE 1
        SELECT CASE welm
            CASE 1
                PRINT "you have chosen "; name1$; " to be eliminated."
                SLEEP 1
                IF b1 = 3 THEN LET game = 10
                IF b1 = 1 THEN LET game = 20
                IF b1 = 2 THEN LET game = 20
            CASE 2
                PRINT "you have chosen "; name2$; " to be eliminated."
                SLEEP 1
                IF b2 = 3 THEN LET game = 10
                IF b2 = 1 THEN LET game = 20
                IF b2 = 2 THEN LET game = 20
            CASE 3
                PRINT "you have chosen "; name3$; " to be eliminated."
                SLEEP 1
                IF b3 = 3 THEN LET game = 10
                IF b3 = 1 THEN LET game = 20
                IF b3 = 2 THEN LET game = 20
        END SELECT
    CASE 2
        SELECT CASE welm
            CASE 1
                PRINT "you have chosen "; name1$; " to be eliminated."
                SLEEP 1
                IF b1 = 3 THEN LET game = 10
                IF b1 = 1 THEN LET game = 20
                IF b1 = 2 THEN LET game = 20
            CASE 2
                PRINT "you have chosen "; name2$; " to be eliminated."
                SLEEP 1
                IF b2 = 3 THEN LET game = 10
                IF b2 = 1 THEN LET game = 20
                IF b2 = 2 THEN LET game = 20
            CASE 3
                PRINT "you have chosen "; name3$; " to be eliminated."
                SLEEP 1
                IF b3 = 3 THEN LET game = 10
                IF b3 = 1 THEN LET game = 20
                IF b3 = 2 THEN LET game = 20
        END SELECT
    CASE 3
        PRINT
END SELECT
SELECT CASE hp
    CASE 1
        SELECT CASE game
            CASE 10
                PRINT "you have eliminated a wolf. You win! game over."
                SLEEP 100000
            CASE 20
                PRINT "you have eliminated a seer or villager. you lose. game over."
                SLEEP 100000
        END SELECT
    CASE 2
        SELECT CASE game
            CASE 10
                PRINT "you have eliminated a wolf. You win! game over."
                SLEEP 100000
            CASE 20
                PRINT "you have eliminated a seer or villager. you lose. game over."
                SLEEP 100000
        END SELECT
    CASE 3
        PRINT "it is now daytime, and the lead villager is deciding who to eliminate."
        PRINT "if a seer/villager is eliminated, you win."
        PRINT "if you are eliminated, you lose."
        PRINT "please wait."
        SLEEP 5
        RANDOMIZE TIMER
        LET wolfend = INT(RND * 2 + 1)
        SELECT CASE wolfend
            CASE 1
                PRINT "the lead villager eliminated a fellow villager or seer. you win!"
                SLEEP 100000
            CASE 2
                PRINT "the lead villager eliminated you. you lose"
                SLEEP 100000
        END SELECT
END SELECT









