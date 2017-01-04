.class public Lcom/nofatclips/dictionary/TestValuesDictionary;
.super Ljava/lang/Object;
.source "TestValuesDictionary.java"


# static fields
.field public static final CREDIT_CARD_invalid:[Ljava/lang/String;

.field public static final CREDIT_CARD_valid:[Ljava/lang/String;

.field public static final EMAIL_invalid:[Ljava/lang/String;

.field public static final EMAIL_valid:[Ljava/lang/String;

.field public static final ISBN_invalid:[Ljava/lang/String;

.field public static final ISBN_valid:[Ljava/lang/String;

.field public static MIX_invalid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static MIX_valid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_DECIMAL_invalid:[Ljava/lang/String;

.field public static final NUMBER_DECIMAL_valid:[Ljava/lang/String;

.field public static final NUMBER_SIGNED_DECIMAL_invalid:[Ljava/lang/String;

.field public static final NUMBER_SIGNED_DECIMAL_valid:[Ljava/lang/String;

.field public static final NUMBER_SIGNED_invalid:[Ljava/lang/String;

.field public static final NUMBER_SIGNED_valid:[Ljava/lang/String;

.field public static final NUMBER_invalid:[Ljava/lang/String;

.field public static final NUMBER_valid:[Ljava/lang/String;

.field public static final STRING_invalid:[Ljava/lang/String;

.field public static final STRING_valid:[Ljava/lang/String;

.field public static final URL_invalid:[Ljava/lang/String;

.field public static final URL_valid:[Ljava/lang/String;

.field public static final ZIP_invalid:[Ljava/lang/String;

.field public static final ZIP_valid:[Ljava/lang/String;

.field public static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->random:Ljava/util/Random;

    .line 203
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 204
    const-string v1, "email@domain.com"

    aput-object v1, v0, v3

    .line 205
    const-string v1, "firstname.lastname@domain.com"

    aput-object v1, v0, v4

    .line 206
    const-string v1, "email@subdomain.domain.com"

    aput-object v1, v0, v5

    .line 207
    const-string v1, "firstname+lastname@domain.com"

    aput-object v1, v0, v6

    .line 208
    const-string v1, "email@123.123.123.123"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 209
    const-string v2, "email@[123.123.123.123]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 210
    const-string v2, "\"email\"@domain.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 211
    const-string v2, "1234567890@domain.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 212
    const-string v2, "email@domain-one.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 213
    const-string v2, "_______@domain.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 214
    const-string v2, "email@domain.name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 215
    const-string v2, "email@domain.co.jp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 216
    const-string v2, "firstname-lastname@domain.com"

    aput-object v2, v0, v1

    .line 203
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_valid:[Ljava/lang/String;

    .line 219
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 220
    const-string v1, "plainaddress"

    aput-object v1, v0, v3

    .line 221
    const-string v1, "#@%^%#$@#$@#.com"

    aput-object v1, v0, v4

    .line 222
    const-string v1, "@domain.com"

    aput-object v1, v0, v5

    .line 223
    const-string v1, "Joe Smith <email@domain.com>"

    aput-object v1, v0, v6

    .line 224
    const-string v1, "email.domain.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 225
    const-string v2, "email@domain@domain.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 226
    const-string v2, ".email@domain.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 227
    const-string v2, "email.@domain.co"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 228
    const-string v2, "email..email@domain.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 229
    const-string v2, "\u00c3\u00a3\u00ef\u00bf\u00bd\u00e2\u20ac\u0161\u00c3\u00a3\u00ef\u00bf\u00bd\u00e2\u20ac\u017e\u00c3\u00a3\u00ef\u00bf\u00bd\u00e2\u20ac\u00a0\u00c3\u00a3\u00ef\u00bf\u00bd\u00cb\u2020\u00c3\u00a3\u00ef\u00bf\u00bd\u00c5\u00a0@domain.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 230
    const-string v2, "email@domain.com (Joe Smith)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 231
    const-string v2, "email@domain"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 232
    const-string v2, "email@-domain.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 233
    const-string v2, "email@domain.web"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 234
    const-string v2, "email@111.222.333.44444"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 235
    const-string v2, "email@domain..com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 236
    const-string v2, "\nemail@domain.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 237
    const-string v2, "\temail@domain.com"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 238
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 239
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 240
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 219
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_invalid:[Ljava/lang/String;

    .line 244
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 245
    const-string v1, "http://www.google.it"

    aput-object v1, v0, v3

    .line 246
    const-string v1, "g:h"

    aput-object v1, v0, v4

    .line 247
    const-string v1, "http://a/b/c/g"

    aput-object v1, v0, v5

    .line 248
    const-string v1, "http://a/b/c/g"

    aput-object v1, v0, v6

    .line 249
    const-string v1, "http://a/b/c/g/"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 250
    const-string v2, "http://a/g"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 251
    const-string v2, "http://g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 252
    const-string v2, "http://a/b/c/d;p?y"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 253
    const-string v2, "http://a/b/c/g?y"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 254
    const-string v2, "http://a/b/c/d;p?q#s"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 255
    const-string v2, "http://a/b/c/g#s"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 256
    const-string v2, "http://a/b/c/g?y#s"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 257
    const-string v2, "http://a/b/c/;x"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 258
    const-string v2, "http://a/b/c/g;x"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 259
    const-string v2, "http://a/b/c/g;x?y#s"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 260
    const-string v2, "http://a/b/c/d;p?q"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 261
    const-string v2, "http://a/b/c/"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 262
    const-string v2, "http://a/b/c/"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 263
    const-string v2, "http://a/b/"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 264
    const-string v2, "http://a/b/"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 265
    const-string v2, "http://a/b/g"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 266
    const-string v2, "http://a/"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 267
    const-string v2, "http://a/"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 268
    const-string v2, "http://a/g"

    aput-object v2, v0, v1

    .line 244
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_valid:[Ljava/lang/String;

    .line 271
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 272
    const-string v1, "http;\\/www;google;it"

    aput-object v1, v0, v3

    .line 273
    const-string v1, "ht\ttp:@www.google.com:80/;p?#"

    aput-object v1, v0, v4

    .line 274
    const-string v1, "http:////////user:@google.com:99?foo"

    aput-object v1, v0, v5

    .line 275
    const-string v1, "http:\\\\\\\\www.google.com\\\\foo"

    aput-object v1, v0, v6

    .line 276
    const-string v1, "http://foo:-80/"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 277
    const-string v2, "http://www.google.it\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 278
    const-string v2, "\thttp://www.google.it"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 279
    const-string v2, "htto;//pippo,com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 280
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 281
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 282
    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 283
    const-string v2, "http://www.pippo .com"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 284
    const-string v2, "http://www..pippo.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 285
    const-string v2, "http:://www.pippo.com"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 286
    const-string v2, "http://www.pippo.com\\"

    aput-object v2, v0, v1

    .line 271
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_invalid:[Ljava/lang/String;

    .line 289
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 290
    const-string v1, "1116928000"

    aput-object v1, v0, v3

    .line 291
    const-string v1, "1284700151"

    aput-object v1, v0, v4

    .line 292
    const-string v1, "128470016X"

    aput-object v1, v0, v5

    .line 293
    const-string v1, "1452472319"

    aput-object v1, v0, v6

    .line 294
    const-string v1, "1452472327"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 295
    const-string v2, "1620244470"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 296
    const-string v2, "1620244489"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 297
    const-string v2, "1788016637"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 298
    const-string v2, "1788016645"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 299
    const-string v2, "7827814395"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 300
    const-string v2, "7827814409"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 301
    const-string v2, "7995586558"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 302
    const-string v2, "7995586566"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 303
    const-string v2, "8163358718"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 304
    const-string v2, "8163358726"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 305
    const-string v2, "8331130871"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 306
    const-string v2, "833113088X"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 307
    const-string v2, "8498903033"

    aput-object v2, v0, v1

    .line 289
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_valid:[Ljava/lang/String;

    .line 310
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 311
    const-string v1, "816335872U"

    aput-object v1, v0, v3

    .line 312
    const-string v1, "78278178278144094409"

    aput-object v1, v0, v4

    .line 313
    const-string v1, "32554744"

    aput-object v1, v0, v5

    .line 314
    const-string v1, "8163358721"

    aput-object v1, v0, v6

    .line 315
    const-string v1, "ASDBS!!DFF"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 316
    const-string v2, "\n1452472319"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 317
    const-string v2, "\t1452472319"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 318
    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 319
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 320
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 321
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 310
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_invalid:[Ljava/lang/String;

    .line 324
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 325
    const-string v1, "5123695007103193"

    aput-object v1, v0, v3

    .line 326
    const-string v1, "4116480559370132"

    aput-object v1, v0, v4

    .line 327
    const-string v1, "6011976857117225"

    aput-object v1, v0, v5

    .line 328
    const-string v1, "344058488426266"

    aput-object v1, v0, v6

    .line 329
    const-string v1, "378282246310005"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 330
    const-string v2, "371449635398431"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 331
    const-string v2, "378734493671000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 332
    const-string v2, "5610591081018250"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 333
    const-string v2, "30569309025904"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 334
    const-string v2, "38520000023237"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 335
    const-string v2, "6011111111111117"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 336
    const-string v2, "6011000990139424"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 337
    const-string v2, "3530111333300000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 338
    const-string v2, "3566002020360505"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 339
    const-string v2, "5555555555554444"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 340
    const-string v2, "5105105105105100"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 341
    const-string v2, "4012888888881881"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 342
    const-string v2, "4222222222222"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 343
    const-string v2, "76009244561"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 344
    const-string v2, "5019717010103742"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 345
    const-string v2, "6331101999990016"

    aput-object v2, v0, v1

    .line 324
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_valid:[Ljava/lang/String;

    .line 348
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 349
    const-string v1, "37828AB46310005"

    aput-object v1, v0, v3

    .line 350
    const-string v1, "371449621321335398431"

    aput-object v1, v0, v4

    .line 351
    const-string v1, "378734493671000"

    aput-object v1, v0, v5

    .line 352
    const-string v1, "-30569309025904"

    aput-object v1, v0, v6

    .line 353
    const-string v1, "385.20000.023237"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 354
    const-string v2, "6121111111111117"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 355
    const-string v2, "A011000990139424"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 356
    const-string v2, "35000111333300000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 357
    const-string v2, "3561001120360505"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 358
    const-string v2, "5431255555554444"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 359
    const-string v2, "AAABBB5105105100"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 360
    const-string v2, "411111!111111111"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 361
    const-string v2, "\n4116480559370132"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 362
    const-string v2, "\t4116480559370132"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 363
    const-string v2, "123456"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 364
    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 365
    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 366
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 367
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 368
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 348
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_invalid:[Ljava/lang/String;

    .line 371
    new-array v0, v6, [Ljava/lang/String;

    .line 372
    const-string v1, "35801"

    aput-object v1, v0, v3

    .line 373
    const-string v1, "44101"

    aput-object v1, v0, v4

    .line 374
    const-string v1, "82941"

    aput-object v1, v0, v5

    .line 371
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_valid:[Ljava/lang/String;

    .line 377
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 378
    const-string v1, "0"

    aput-object v1, v0, v3

    .line 379
    const-string v1, "3a5801a"

    aput-object v1, v0, v4

    .line 380
    const-string v1, "4a4101"

    aput-object v1, v0, v5

    .line 381
    const-string v1, "\n82941"

    aput-object v1, v0, v6

    .line 382
    const-string v1, "\t82941"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 383
    const-string v2, "829411234"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 384
    const-string v2, "abcdef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 385
    const-string v2, "!!!!!!"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 386
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 387
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 388
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 377
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_invalid:[Ljava/lang/String;

    .line 391
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 392
    const-string v1, "1"

    aput-object v1, v0, v3

    .line 393
    const-string v1, "10"

    aput-object v1, v0, v4

    .line 394
    const-string v1, "9999"

    aput-object v1, v0, v5

    .line 395
    const-string v1, "34"

    aput-object v1, v0, v6

    .line 396
    const-string v1, "40"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 397
    const-string v2, "55"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 398
    const-string v2, "70"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 399
    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 400
    const-string v2, "1000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 401
    const-string v2, "2988881"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 402
    const-string v2, "1234124"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 403
    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 404
    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 405
    const-string v2, "435"

    aput-object v2, v0, v1

    .line 391
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_valid:[Ljava/lang/String;

    .line 408
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 409
    const-string v1, "0"

    aput-object v1, v0, v3

    .line 410
    const-string v1, "AAA"

    aput-object v1, v0, v4

    .line 411
    const-string v1, "99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999"

    aput-object v1, v0, v5

    .line 412
    const-string v1, "-12"

    aput-object v1, v0, v6

    .line 413
    const-string v1, "\n12"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 414
    const-string v2, "\t12"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 415
    const-string v2, "!!-"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 416
    const-string v2, "12.01"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 417
    const-string v2, "12%"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 418
    const-string v2, "z<q"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 419
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 420
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 421
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 408
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_invalid:[Ljava/lang/String;

    .line 424
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 425
    const-string v1, "-1"

    aput-object v1, v0, v3

    .line 426
    const-string v1, "10"

    aput-object v1, v0, v4

    .line 427
    const-string v1, "-9999"

    aput-object v1, v0, v5

    .line 428
    const-string v1, "-34"

    aput-object v1, v0, v6

    .line 429
    const-string v1, "40"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 430
    const-string v2, "55"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 431
    const-string v2, "70"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 432
    const-string v2, "99"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 433
    const-string v2, "-1000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 434
    const-string v2, "2988881"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 435
    const-string v2, "-1234124"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 436
    const-string v2, "-2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 437
    const-string v2, "-33"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 438
    const-string v2, "435"

    aput-object v2, v0, v1

    .line 424
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_valid:[Ljava/lang/String;

    .line 441
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 442
    const-string v1, "0"

    aput-object v1, v0, v3

    .line 443
    const-string v1, "12,3"

    aput-object v1, v0, v4

    .line 444
    const-string v1, "ab00"

    aput-object v1, v0, v5

    .line 445
    const-string v1, "99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999"

    aput-object v1, v0, v6

    .line 446
    const-string v1, "!12"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 447
    const-string v2, "233176401123040024477515224301703382452989758054156037914702679301887293196935329184208300820842156635598983942674598.921047033915219852965519484067098016447"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 448
    const-string v2, "10.-9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 449
    const-string v2, "\n10.9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 450
    const-string v2, "\t10.9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 451
    const-string v2, "hello"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 452
    const-string v2, "09@11+"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 453
    const-string v2, "*12.01"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 454
    const-string v2, "AAA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 455
    const-string v2, "!!-"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 456
    const-string v2, "12.01"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 457
    const-string v2, "12%"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 458
    const-string v2, "z<q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 459
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 460
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 461
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 441
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_invalid:[Ljava/lang/String;

    .line 464
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 465
    const-string v1, "12.3"

    aput-object v1, v0, v3

    .line 466
    const-string v1, "122323.3331"

    aput-object v1, v0, v4

    .line 467
    const-string v1, "0.3331"

    aput-object v1, v0, v5

    .line 468
    const-string v1, "11.78"

    aput-object v1, v0, v6

    .line 469
    const-string v1, "12.78"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 470
    const-string v2, "1156.1728"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 471
    const-string v2, "1314.1278"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 472
    const-string v2, "4411.7448"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 473
    const-string v2, "99.9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 474
    const-string v2, "90.77"

    aput-object v2, v0, v1

    .line 464
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_valid:[Ljava/lang/String;

    .line 477
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 478
    const-string v1, "0"

    aput-object v1, v0, v3

    .line 479
    const-string v1, "12,3"

    aput-object v1, v0, v4

    .line 480
    const-string v1, "ab00"

    aput-object v1, v0, v5

    .line 481
    const-string v1, "233176401123040024477515224301703382452989758054156037914702679301887293196935329184208300820842156635598983942674598.921047033915219852965519484067098016447"

    aput-object v1, v0, v6

    .line 482
    const-string v1, "10.-9"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 483
    const-string v2, "hello"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 484
    const-string v2, "09@11+"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 485
    const-string v2, "-12"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 486
    const-string v2, "\n3.42"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 487
    const-string v2, "\t12.3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 488
    const-string v2, "AAA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 489
    const-string v2, "!!-"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 490
    const-string v2, "*12.01"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 491
    const-string v2, "12.01"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 492
    const-string v2, "12%"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 493
    const-string v2, "z<q"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 494
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 495
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 496
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 477
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_invalid:[Ljava/lang/String;

    .line 499
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 500
    const-string v1, "-12.3"

    aput-object v1, v0, v3

    .line 501
    const-string v1, "122323.3331"

    aput-object v1, v0, v4

    .line 502
    const-string v1, "-0.3331"

    aput-object v1, v0, v5

    .line 503
    const-string v1, "11.78"

    aput-object v1, v0, v6

    .line 504
    const-string v1, "12.78"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 505
    const-string v2, "1156.1728"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 506
    const-string v2, "-1314.1278"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 507
    const-string v2, "4411.7448"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 508
    const-string v2, "-99.9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 509
    const-string v2, "-90.77"

    aput-object v2, v0, v1

    .line 499
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_valid:[Ljava/lang/String;

    .line 512
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 513
    const-string v1, "0"

    aput-object v1, v0, v3

    .line 514
    const-string v1, "12,3"

    aput-object v1, v0, v4

    .line 515
    const-string v1, "12\n78"

    aput-object v1, v0, v5

    .line 516
    const-string v1, "ab00"

    aput-object v1, v0, v6

    .line 517
    const-string v1, "233176401123040024477515224301703382452989758054156037914702679301887293196935329184208300820842156635598983942674598.921047033915219852965519484067098016447"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 518
    const-string v2, "10.-9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 519
    const-string v2, "4411 7448"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 520
    const-string v2, "hello"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 521
    const-string v2, "09@11+"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 522
    const-string v2, "\n124"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 523
    const-string v2, "\t234"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 524
    const-string v2, "*12.01"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 525
    const-string v2, "AAA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 526
    const-string v2, "!!-"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 527
    const-string v2, "12.01"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 528
    const-string v2, "12%"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 529
    const-string v2, "z<q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 530
    const-string v2, " "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 531
    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 532
    const-string v2, "^"

    aput-object v2, v0, v1

    .line 512
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_invalid:[Ljava/lang/String;

    .line 535
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    .line 536
    const-string v1, "string"

    aput-object v1, v0, v3

    .line 537
    const-string v1, "zyxel129"

    aput-object v1, v0, v4

    .line 538
    const-string v1, "cercei"

    aput-object v1, v0, v5

    .line 539
    const-string v1, "1mxrwiha"

    aput-object v1, v0, v6

    .line 540
    const-string v1, "hehui2015"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 541
    const-string v2, "jamisdakar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 542
    const-string v2, "x3cNitoO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 543
    const-string v2, "langfield345"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 544
    const-string v2, "qch123"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 545
    const-string v2, "19790511"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 546
    const-string v2, "lsxusu0417"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 547
    const-string v2, "U7tw3Fr117"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 548
    const-string v2, "TuMIUc3s"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 549
    const-string v2, "tindersticks"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 550
    const-string v2, "porty45qs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 551
    const-string v2, "19811983"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 552
    const-string v2, "362137624"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 553
    const-string v2, "mybigtoe"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 554
    const-string v2, "falcons420"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 555
    const-string v2, "abdd870c"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 556
    const-string v2, "ganga-giulia"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 557
    const-string v2, "z885633"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 558
    const-string v2, "123456pk45"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 559
    const-string v2, "zxc52520"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 560
    const-string v2, "qq19890418"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 561
    const-string v2, "huiming"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 562
    const-string v2, "sandisk"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 563
    const-string v2, "3232"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 564
    const-string v2, "4596"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 565
    const-string v2, "lilihappy"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 566
    const-string v2, "angga"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 567
    const-string v2, "herguless"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 568
    const-string v2, "fatchiken"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 569
    const-string v2, "fjqxm0000"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 570
    const-string v2, "sts1903"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 571
    const-string v2, "HAIXIA2009"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 572
    const-string v2, "zou186187"

    aput-object v2, v0, v1

    .line 535
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_valid:[Ljava/lang/String;

    .line 575
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 576
    const-string v1, "ndkgskgjskjsdkfjdflkdsjfdskfjsdkfjsdkfljsdlkfsfkdfhdfjgksgjskgjskgsklsdjkfjsdkfjsdkghsesggjskljlkdljkh"

    aput-object v1, v0, v3

    .line 577
    const-string v1, "\n\n\n\t\t\n"

    aput-object v1, v0, v4

    .line 578
    const-string v1, "hthw\tfafadf"

    aput-object v1, v0, v5

    .line 579
    const-string v1, "peworiw\nfldflsdk"

    aput-object v1, v0, v6

    .line 580
    const-string v1, " "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 581
    const-string v2, "\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 582
    const-string v2, "\t"

    aput-object v2, v0, v1

    .line 575
    sput-object v0, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_invalid:[Ljava/lang/String;

    .line 583
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomMixedValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;
    .locals 4
    .parameter "widget"

    .prologue
    const/4 v3, 0x0

    .line 66
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    .line 71
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_valid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_invalid:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 94
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 96
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 98
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_valid:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v2, 0x1

    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->MIX_invalid:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    .line 103
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRandomValue(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;
    .locals 3
    .parameter "widget"

    .prologue
    .line 17
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, contentType:Ljava/lang/String;
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 23
    :cond_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "isbn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_3
    const-string v1, "creditCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_4
    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_5
    const-string v1, "numberDecimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_6
    const-string v1, "numberSigned"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 49
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_7
    const-string v1, "numberSignedDecimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 57
    :cond_8
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_invalid:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getRandomValue([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "valid"
    .parameter "invalid"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    array-length v5, p0

    array-length v6, p1

    add-int/2addr v5, v6

    new-array v3, v5, [Ljava/lang/String;

    .line 111
    .local v3, mix:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_0

    .line 115
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v5, p1

    if-lt v2, v5, :cond_1

    .line 118
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 120
    array-length v5, v3

    if-le v5, v8, :cond_2

    .line 122
    new-array v4, v9, [Ljava/lang/String;

    aget-object v5, v3, v7

    aput-object v5, v4, v7

    aget-object v5, v3, v8

    aput-object v5, v4, v8

    .line 132
    :goto_2
    return-object v4

    .line 113
    .end local v2           #j:I
    :cond_0
    aget-object v5, p0, v0

    aput-object v5, v3, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget-object v5, p1, v2

    aput-object v5, v3, v0

    .line 115
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 125
    :cond_2
    array-length v5, v3

    if-lez v5, :cond_3

    .line 127
    new-array v4, v9, [Ljava/lang/String;

    aget-object v5, v3, v7

    aput-object v5, v4, v7

    aget-object v5, v3, v7

    aput-object v5, v4, v8

    .line 128
    .local v4, ret:[Ljava/lang/String;
    goto :goto_2

    .line 132
    .end local v4           #ret:[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static getValues(Lcom/nofatclips/androidtesting/model/WidgetState;Z)[Ljava/lang/String;
    .locals 3
    .parameter "widget"
    .parameter "firstValue"

    .prologue
    .line 138
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, contentType:Ljava/lang/String;
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->EMAIL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 144
    :cond_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->URL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_1
    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ZIP_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_2
    const-string v1, "isbn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->ISBN_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 156
    :cond_3
    const-string v1, "creditCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->CREDIT_CARD_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 160
    :cond_4
    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_5
    const-string v1, "numberDecimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_DECIMAL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_6
    const-string v1, "numberSigned"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 171
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_7
    const-string v1, "numberSignedDecimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 175
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->NUMBER_SIGNED_DECIMAL_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 179
    :cond_8
    sget-object v1, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_valid:[Ljava/lang/String;

    sget-object v2, Lcom/nofatclips/dictionary/TestValuesDictionary;->STRING_invalid:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static final getValues([Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7
    .parameter "valid"
    .parameter "invalid"
    .parameter "firstValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 186
    .local v1, ret:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 188
    aget-object v3, p1, v5

    aput-object v3, v1, v5

    .line 189
    aget-object v3, p0, v5

    aput-object v3, v1, v6

    .line 200
    :goto_0
    return-object v1

    .line 193
    :cond_0
    sget-object v3, Lcom/nofatclips/dictionary/TestValuesDictionary;->random:Ljava/util/Random;

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 194
    .local v2, valid_idx:I
    sget-object v3, Lcom/nofatclips/dictionary/TestValuesDictionary;->random:Ljava/util/Random;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 196
    .local v0, invalid_idx:I
    aget-object v3, p1, v0

    aput-object v3, v1, v5

    .line 197
    aget-object v3, p0, v2

    aput-object v3, v1, v6

    goto :goto_0
.end method
