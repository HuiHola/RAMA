.class public Lcom/airbnb/lottie/model/layer/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/layer/Layer$MatteType;,
        Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    }
.end annotation


# instance fields
.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final hidden:Z

.field private final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final layerId:J

.field private final layerName:Ljava/lang/String;

.field private final layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field private final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field private final parentId:J

.field private final preCompHeight:I

.field private final preCompWidth:I

.field private final refId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final solidColor:I

.field private final solidHeight:I

.field private final solidWidth:I

.field private final startFrame:F

.field private final text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final timeStretch:F

.field private final transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 31
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;",
            "IIIFFII",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/model/layer/Layer$MatteType;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 65
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move/from16 v27, p24

    move-object/from16 v28, v3

    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    .line 67
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 68
    move-object/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 69
    move-object/from16 v28, v3

    move-wide/from16 v29, v7

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    .line 70
    move-object/from16 v28, v3

    move-object/from16 v29, v9

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 71
    move-object/from16 v28, v3

    move-wide/from16 v29, v10

    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 72
    move-object/from16 v28, v3

    move-object/from16 v29, v12

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    .line 73
    move-object/from16 v28, v3

    move-object/from16 v29, v13

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 74
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 75
    move-object/from16 v28, v3

    move/from16 v29, v15

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    .line 76
    move-object/from16 v28, v3

    move/from16 v29, v16

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    .line 77
    move-object/from16 v28, v3

    move/from16 v29, v17

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    .line 78
    move-object/from16 v28, v3

    move/from16 v29, v18

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    .line 79
    move-object/from16 v28, v3

    move/from16 v29, v19

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    .line 80
    move-object/from16 v28, v3

    move/from16 v29, v20

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:I

    .line 81
    move-object/from16 v28, v3

    move/from16 v29, v21

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:I

    .line 82
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 83
    move-object/from16 v28, v3

    move-object/from16 v29, v23

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    .line 84
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 85
    move-object/from16 v28, v3

    move-object/from16 v29, v25

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 86
    move-object/from16 v28, v3

    move-object/from16 v29, v26

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 87
    move-object/from16 v28, v3

    move/from16 v29, v27

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    .line 88
    return-void
.end method


# virtual methods
.method getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v0, v1

    return-object v0
.end method

.method public getId()J
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    move-wide v0, v1

    return-wide v0
.end method

.method getInOutKeyframes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/value/Keyframe",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-object v0, v1

    return-object v0
.end method

.method getMasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method getMatteType()Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-object v0, v1

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method getParentId()J
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    move-wide v0, v1

    return-wide v0
.end method

.method getPreCompHeight()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:I

    move v0, v1

    return v0
.end method

.method getPreCompWidth()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:I

    move v0, v1

    return v0
.end method

.method getRefId()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method getShapes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method getSolidColor()I
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    move v0, v1

    return v0
.end method

.method getSolidHeight()I
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    move v0, v1

    return v0
.end method

.method getSolidWidth()I
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    move v0, v1

    return v0
.end method

.method getStartProgress()F
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    move-object v2, v0

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    div-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-object v0, v1

    return-object v0
.end method

.method getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-object v0, v1

    return-object v0
.end method

.method getTimeRemapping()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, v1

    return-object v0
.end method

.method getTimeStretch()F
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    move v0, v1

    return v0
.end method

.method getTransform()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v0, v1

    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 184
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 185
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v6

    move-object v3, v6

    .line 186
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 187
    move-object v6, v2

    const-string v7, "\t\tParents: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 188
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v6

    move-object v3, v6

    .line 189
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 190
    move-object v6, v2

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 191
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    move-object v7, v3

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getParentId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/lottie/LottieComposition;->layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 193
    :cond_0
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 195
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 196
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tMasks: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/layer/Layer;->getMasks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 198
    :cond_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v6

    if-eqz v6, :cond_3

    .line 199
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tBackground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%dx%d %X\n"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    .line 200
    invoke-virtual {v12}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v0

    invoke-virtual {v12}, Lcom/airbnb/lottie/model/layer/Layer;->getSolidColor()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 202
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 203
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\tShapes:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 204
    move-object v6, v0

    iget-object v6, v6, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 205
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 206
    goto :goto_1

    .line 208
    :cond_4
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method
