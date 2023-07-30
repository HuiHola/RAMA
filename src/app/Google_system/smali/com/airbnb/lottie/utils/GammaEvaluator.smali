.class public Lcom/airbnb/lottie/utils/GammaEvaluator;
.super Ljava/lang/Object;
.source "GammaEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static EOCF_sRGB(F)F
    .locals 5

    .prologue
    .line 24
    move v0, p0

    move v1, v0

    const v2, 0x3d25aee6    # 0.04045f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    move v1, v0

    const v2, 0x414eb852    # 12.92f

    div-float/2addr v1, v2

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    const v2, 0x3d6147ae    # 0.055f

    add-float/2addr v1, v2

    const v2, 0x3f870a3d    # 1.055f

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0
.end method

.method private static OECF_sRGB(F)F
    .locals 5

    .prologue
    .line 16
    move v0, p0

    move v1, v0

    const v2, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 17
    move v1, v0

    const v2, 0x414eb852    # 12.92f

    mul-float/2addr v1, v2

    .line 16
    :goto_0
    move v0, v1

    return v0

    .line 17
    :cond_0
    move v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v3, 0x3ff0e147a0000000L    # 1.0549999475479126

    mul-double/2addr v1, v3

    const-wide v3, 0x3fac28f5c0000000L    # 0.054999999701976776

    sub-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_0
.end method

.method public static evaluate(FII)I
    .locals 21

    .prologue
    .line 28
    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 29
    move/from16 v17, v3

    move/from16 v2, v17

    .line 62
    :goto_0
    return v2

    .line 31
    :cond_0
    move/from16 v17, v3

    const/16 v18, 0x18

    shr-int/lit8 v17, v17, 0x18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v5, v17

    .line 32
    move/from16 v17, v3

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v6, v17

    .line 33
    move/from16 v17, v3

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v7, v17

    .line 34
    move/from16 v17, v3

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v8, v17

    .line 36
    move/from16 v17, v4

    const/16 v18, 0x18

    shr-int/lit8 v17, v17, 0x18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v9, v17

    .line 37
    move/from16 v17, v4

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v10, v17

    .line 38
    move/from16 v17, v4

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v11, v17

    .line 39
    move/from16 v17, v4

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v17, v17, v18

    move/from16 v12, v17

    .line 42
    move/from16 v17, v6

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v17

    move/from16 v6, v17

    .line 43
    move/from16 v17, v7

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v17

    move/from16 v7, v17

    .line 44
    move/from16 v17, v8

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v17

    move/from16 v8, v17

    .line 46
    move/from16 v17, v10

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v17

    move/from16 v10, v17

    .line 47
    move/from16 v17, v11

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v17

    move/from16 v11, v17

    .line 48
    move/from16 v17, v12

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->EOCF_sRGB(F)F

    move-result v17

    move/from16 v12, v17

    .line 51
    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v9

    move/from16 v20, v5

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v13, v17

    .line 52
    move/from16 v17, v6

    move/from16 v18, v2

    move/from16 v19, v10

    move/from16 v20, v6

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v14, v17

    .line 53
    move/from16 v17, v7

    move/from16 v18, v2

    move/from16 v19, v11

    move/from16 v20, v7

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v15, v17

    .line 54
    move/from16 v17, v8

    move/from16 v18, v2

    move/from16 v19, v12

    move/from16 v20, v8

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v16, v17

    .line 57
    move/from16 v17, v13

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v13, v17

    .line 58
    move/from16 v17, v14

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v17

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v14, v17

    .line 59
    move/from16 v17, v15

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v17

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v15, v17

    .line 60
    move/from16 v17, v16

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/utils/GammaEvaluator;->OECF_sRGB(F)F

    move-result v17

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v17, v17, v18

    move/from16 v16, v17

    .line 62
    move/from16 v17, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    const/16 v18, 0x18

    shl-int/lit8 v17, v17, 0x18

    move/from16 v18, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    const/16 v19, 0x10

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    move/from16 v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    const/16 v19, 0x8

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    move/from16 v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    or-int v17, v17, v18

    move/from16 v2, v17

    goto/16 :goto_0
.end method
