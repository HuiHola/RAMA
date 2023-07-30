.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Justification;
    }
.end annotation


# instance fields
.field public final baselineShift:F

.field public final color:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final fontName:Ljava/lang/String;

.field public final justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public final lineHeight:F

.field public final size:F

.field public final strokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final strokeOverFill:Z

.field public final strokeWidth:F

.field public final text:Ljava/lang/String;

.field public final tracking:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V
    .locals 14
    .param p8    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 34
    move-object v12, v0

    move-object v13, v2

    iput-object v13, v12, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 35
    move-object v12, v0

    move v13, v3

    iput v13, v12, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 36
    move-object v12, v0

    move-object v13, v4

    iput-object v13, v12, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 37
    move-object v12, v0

    move v13, v5

    iput v13, v12, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 38
    move-object v12, v0

    move v13, v6

    iput v13, v12, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 39
    move-object v12, v0

    move v13, v7

    iput v13, v12, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 40
    move-object v12, v0

    move v13, v8

    iput v13, v12, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 41
    move-object v12, v0

    move v13, v9

    iput v13, v12, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 42
    move-object v12, v0

    move v13, v10

    iput v13, v12, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 43
    move-object v12, v0

    move v13, v11

    iput-boolean v13, v12, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 44
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 10

    .prologue
    .line 49
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v1, v4

    .line 50
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 51
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/model/DocumentData;->size:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    move v1, v4

    .line 52
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 53
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    add-int/2addr v4, v5

    move v1, v4

    .line 54
    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    move-wide v2, v4

    .line 55
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int/2addr v4, v5

    move v1, v4

    .line 56
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/airbnb/lottie/model/DocumentData;->color:I

    add-int/2addr v4, v5

    move v1, v4

    .line 57
    move v4, v1

    move v0, v4

    return v0
.end method
