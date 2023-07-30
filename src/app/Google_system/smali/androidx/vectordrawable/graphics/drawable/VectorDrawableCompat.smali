.class public Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.super Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;,
        Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    }
.end annotation


# static fields
.field private static final DBG_VECTOR_DRAWABLE:Z = false

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final LINECAP_BUTT:I = 0x0

.field private static final LINECAP_ROUND:I = 0x1

.field private static final LINECAP_SQUARE:I = 0x2

.field private static final LINEJOIN_BEVEL:I = 0x2

.field private static final LINEJOIN_MITER:I = 0x0

.field private static final LINEJOIN_ROUND:I = 0x1

.field static final LOGTAG:Ljava/lang/String; = "VectorDrawableCompat"

.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private mAllowCaching:Z

.field private mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mMutated:Z

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 311
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 317
    move-object v1, v0

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    .line 318
    move-object v1, v0

    new-instance v2, Landroid/graphics/Matrix;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 319
    move-object v1, v0

    new-instance v2, Landroid/graphics/Rect;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    .line 322
    move-object v1, v0

    new-instance v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>()V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 323
    return-void
.end method

.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .locals 8
    .param p1    # Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 325
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 311
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 317
    move-object v2, v0

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    .line 318
    move-object v2, v0

    new-instance v3, Landroid/graphics/Matrix;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 319
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    .line 326
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 327
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v5, v1

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v6, v1

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 328
    return-void
.end method

.method static applyAlpha(IF)I
    .locals 6

    .prologue
    .line 679
    move v0, p0

    move v1, p1

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    move v2, v3

    .line 680
    move v3, v0

    const v4, 0xffffff

    and-int/2addr v3, v4

    move v0, v3

    .line 681
    move v3, v0

    move v4, v2

    int-to-float v4, v4

    move v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    move v0, v3

    .line 682
    move v3, v0

    move v0, v3

    return v0
.end method

.method public static create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    .locals 11
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 637
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 638
    new-instance v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    move-object v3, v6

    .line 639
    move-object v6, v3

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 640
    move-object v6, v3

    new-instance v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    .line 641
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v7, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 642
    move-object v6, v3

    move-object v0, v6

    .line 662
    :goto_0
    return-object v0

    .line 646
    :cond_0
    move-object v6, v0

    move v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v3, v6

    .line 647
    move-object v6, v3

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object v4, v6

    .line 649
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v10, v6

    move v6, v10

    move v7, v10

    move v5, v7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    move v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 653
    :cond_1
    move v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 654
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "No start tag found"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 657
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 658
    const-string v6, "VectorDrawableCompat"

    const-string v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 662
    :goto_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 656
    :cond_2
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v2

    :try_start_1
    invoke-static {v6, v7, v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 659
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 660
    const-string v6, "VectorDrawableCompat"

    const-string v7, "parser error"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_2
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    move-object v4, v5

    .line 674
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 675
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method private inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v15, v1

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v6, v15

    .line 808
    move-object v15, v6

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move-object v7, v15

    .line 809
    const/4 v15, 0x1

    move v8, v15

    .line 813
    new-instance v15, Ljava/util/ArrayDeque;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayDeque;-><init>()V

    move-object v9, v15

    .line 814
    move-object v15, v9

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 816
    move-object v15, v3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    move v10, v15

    .line 817
    move-object v15, v3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v11, v15

    .line 820
    :goto_0
    move v15, v10

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    move-object v15, v3

    .line 821
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    move/from16 v16, v11

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move v15, v10

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 822
    :cond_0
    move v15, v10

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 823
    move-object v15, v3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 824
    move-object v15, v9

    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object v13, v15

    .line 825
    const-string v15, "path"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 826
    new-instance v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>()V

    move-object v14, v15

    .line 827
    move-object v15, v14

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    invoke-virtual/range {v15 .. v19}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 828
    move-object v15, v13

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 829
    move-object v15, v14

    invoke-virtual {v15}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 830
    move-object v15, v7

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 832
    :cond_1
    const/4 v15, 0x0

    move v8, v15

    .line 833
    move-object v15, v6

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    move/from16 v16, v0

    move-object/from16 v17, v14

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->mChangingConfigurations:I

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 859
    :cond_2
    :goto_1
    move-object v15, v3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move v10, v15

    goto/16 :goto_0

    .line 834
    :cond_3
    const-string v15, "clip-path"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 835
    new-instance v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>()V

    move-object v14, v15

    .line 836
    move-object v15, v14

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    invoke-virtual/range {v15 .. v19}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 837
    move-object v15, v13

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 838
    move-object v15, v14

    invoke-virtual {v15}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 839
    move-object v15, v7

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 841
    :cond_4
    move-object v15, v6

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    move/from16 v16, v0

    move-object/from16 v17, v14

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->mChangingConfigurations:I

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 842
    goto :goto_1

    :cond_5
    const-string v15, "group"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 843
    new-instance v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    move-object v14, v15

    .line 844
    move-object v15, v14

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    invoke-virtual/range {v15 .. v19}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 845
    move-object v15, v13

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 846
    move-object v15, v9

    move-object/from16 v16, v14

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 847
    move-object v15, v14

    invoke-virtual {v15}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 848
    move-object v15, v7

    iget-object v15, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v16}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 851
    :cond_6
    move-object v15, v6

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    move/from16 v16, v0

    move-object/from16 v17, v14

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    goto/16 :goto_1

    .line 853
    :cond_7
    move v15, v10

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 854
    move-object v15, v3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 855
    const-string v15, "group"

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 856
    move-object v15, v9

    invoke-virtual {v15}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_1

    .line 867
    :cond_8
    move v15, v8

    if-eqz v15, :cond_9

    .line 868
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string v17, "no path defined"

    invoke-direct/range {v16 .. v17}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 870
    :cond_9
    return-void
.end method

.method private needMirroring()Z
    .locals 3

    .prologue
    .line 898
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 899
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 900
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .line 902
    :goto_1
    return v0

    .line 900
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 902
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method private static parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 726
    move v0, p0

    move-object v1, p1

    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 740
    :pswitch_0
    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    .line 728
    :pswitch_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 730
    :pswitch_2
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 732
    :pswitch_3
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 734
    :pswitch_4
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 736
    :pswitch_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 738
    :pswitch_6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v2

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private printGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;I)V
    .locals 11

    .prologue
    .line 873
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string v6, ""

    move-object v3, v6

    .line 874
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 874
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 878
    :cond_0
    const-string v6, "VectorDrawableCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "current group is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " rotation is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    iget v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 880
    const-string v6, "VectorDrawableCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "matrix is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->getLocalMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 882
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v1

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 883
    move-object v6, v1

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VObject;

    move-object v5, v6

    .line 884
    move-object v6, v5

    instance-of v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v6, :cond_1

    .line 885
    move-object v6, v0

    move-object v7, v5

    check-cast v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->printGroupTree(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;I)V

    .line 882
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 887
    :cond_1
    move-object v6, v5

    check-cast v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->printVPath(I)V

    goto :goto_2

    .line 890
    :cond_2
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v3, v9

    .line 747
    move-object v9, v3

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move-object v4, v9

    .line 752
    move-object v9, v1

    move-object v10, v2

    const-string v11, "tintMode"

    const/4 v12, 0x6

    const/4 v13, -0x1

    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v9

    move v5, v9

    .line 754
    move-object v9, v3

    move v10, v5

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v10, v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v10

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 756
    move-object v9, v1

    const/4 v10, 0x1

    .line 757
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v6, v9

    .line 758
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 759
    move-object v9, v3

    move-object v10, v6

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 762
    :cond_0
    move-object v9, v3

    move-object v10, v1

    move-object v11, v2

    const-string v12, "autoMirrored"

    const/4 v13, 0x5

    move-object v14, v3

    iget-boolean v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v10

    iput-boolean v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    .line 765
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    const-string v12, "viewportWidth"

    const/4 v13, 0x7

    move-object v14, v4

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    .line 769
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    const-string v12, "viewportHeight"

    const/16 v13, 0x8

    move-object v14, v4

    iget v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    invoke-static {v10, v11, v12, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    .line 773
    move-object v9, v4

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_1

    .line 774
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 776
    :cond_1
    move-object v9, v4

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    .line 777
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 781
    :cond_2
    move-object v9, v4

    move-object v10, v1

    const/4 v11, 0x3

    move-object v12, v4

    iget v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    .line 783
    move-object v9, v4

    move-object v10, v1

    const/4 v11, 0x2

    move-object v12, v4

    iget v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    .line 785
    move-object v9, v4

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    .line 786
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires width > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 788
    :cond_3
    move-object v9, v4

    iget v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 789
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<vector> tag requires height > 0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 794
    :cond_4
    move-object v9, v1

    move-object v10, v2

    const-string v11, "alpha"

    const/4 v12, 0x4

    move-object v13, v4

    .line 795
    invoke-virtual {v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getAlpha()F

    move-result v13

    .line 794
    invoke-static {v9, v10, v11, v12, v13}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    move v7, v9

    .line 796
    move-object v9, v4

    move v10, v7

    invoke-virtual {v9, v10}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setAlpha(F)V

    .line 798
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 799
    move-object v9, v8

    if-eqz v9, :cond_5

    .line 800
    move-object v9, v4

    move-object v10, v8

    iput-object v10, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    .line 801
    move-object v9, v4

    iget-object v9, v9, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    move-object v10, v8

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 803
    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 580
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 583
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 360
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 361
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    :goto_0
    return-void

    .line 366
    :cond_0
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->copyBounds(Landroid/graphics/Rect;)V

    .line 367
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-lez v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-gtz v11, :cond_2

    .line 369
    :cond_1
    goto :goto_0

    .line 373
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v11, :cond_6

    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    move-object v2, v11

    .line 379
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 380
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 381
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v3, v11

    .line 382
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v4, v11

    .line 384
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v5, v11

    .line 385
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpFloats:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move v6, v11

    .line 388
    move v11, v5

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    move v11, v6

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_4

    .line 389
    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    move v3, v11

    .line 390
    const/high16 v11, 0x3f800000    # 1.0f

    move v4, v11

    .line 393
    :cond_4
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    move v12, v3

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v7, v11

    .line 394
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    move v12, v4

    mul-float/2addr v11, v12

    float-to-int v11, v11

    move v8, v11

    .line 395
    const/16 v11, 0x800

    move v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v7, v11

    .line 396
    const/16 v11, 0x800

    move v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v8, v11

    .line 398
    move v11, v7

    if-lez v11, :cond_5

    move v11, v8

    if-gtz v11, :cond_7

    .line 399
    :cond_5
    goto/16 :goto_0

    .line 373
    :cond_6
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 402
    :cond_7
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    move-result v11

    move v9, v11

    .line 403
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    move-object v13, v0

    iget-object v13, v13, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    move-object v11, v0

    invoke-direct {v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->needMirroring()Z

    move-result v11

    move v10, v11

    .line 407
    move v11, v10

    if-eqz v11, :cond_8

    .line 408
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 409
    move-object v11, v1

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 415
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 417
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->createCachedBitmapIfNeeded(II)V

    .line 418
    move-object v11, v0

    iget-boolean v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    if-nez v11, :cond_a

    .line 419
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    .line 426
    :cond_9
    :goto_2
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v12, v1

    move-object v13, v2

    move-object v14, v0

    iget-object v14, v14, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12, v13, v14}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 427
    move-object v11, v1

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 428
    goto/16 :goto_0

    .line 421
    :cond_a
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->canReuseCache()Z

    move-result v11

    if-nez v11, :cond_9

    .line 422
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    .line 423
    move-object v11, v0

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v11}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCacheStates()V

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 433
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    move v0, v1

    .line 436
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 916
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 917
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .line 919
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 352
    new-instance v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    move-object v0, v1

    .line 355
    :goto_0
    return-object v0

    .line 354
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v2

    iput v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 355
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 569
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 570
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    .line 573
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    float-to-int v1, v1

    move v0, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 561
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    .line 564
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    float-to-int v1, v1

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 552
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x3

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPixelSize()F
    .locals 9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 610
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    .line 615
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    move v0, v7

    .line 623
    :goto_0
    return v0

    .line 617
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    move v1, v7

    .line 618
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    move v2, v7

    .line 619
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    move v3, v7

    .line 620
    move-object v7, v0

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    move v4, v7

    .line 621
    move v7, v3

    move v8, v1

    div-float/2addr v7, v8

    move v5, v7

    .line 622
    move v7, v4

    move v8, v2

    div-float/2addr v7, v8

    move v6, v7

    .line 623
    move v7, v5

    move v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method public bridge synthetic getState()[I
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Landroidx/collection/ArrayMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 689
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 694
    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 700
    move-object v8, v0

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 718
    :goto_0
    return-void

    .line 704
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v5, v8

    .line 705
    new-instance v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    move-object v6, v8

    .line 706
    move-object v8, v5

    move-object v9, v6

    iput-object v9, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    .line 708
    move-object v8, v1

    move-object v9, v4

    move-object v10, v3

    sget-object v11, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    invoke-static {v8, v9, v10, v11}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v7, v8

    .line 711
    move-object v8, v0

    move-object v9, v7

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 712
    move-object v8, v7

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 713
    move-object v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v9

    iput v9, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    .line 714
    move-object v8, v5

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    .line 715
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 717
    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v11, v5

    iget-object v11, v11, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v12, v5

    iget-object v12, v12, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11, v12}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v9

    iput-object v9, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 718
    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 2

    .prologue
    .line 924
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 925
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 929
    :goto_0
    return-void

    .line 928
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->invalidateSelf()V

    .line 929
    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 2

    .prologue
    .line 588
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 589
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    move v0, v1

    .line 591
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-boolean v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    move v0, v1

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 521
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    move v0, v1

    .line 526
    :goto_0
    return v0

    .line 524
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 525
    invoke-virtual {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 526
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 333
    move-object v1, v0

    iget-object v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 334
    move-object v1, v0

    move-object v0, v1

    .line 341
    :goto_0
    return-object v0

    .line 337
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mMutated:Z

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-super {v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_1

    .line 338
    move-object v1, v0

    new-instance v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-direct {v3, v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    iput-object v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    .line 339
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mMutated:Z

    .line 341
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 909
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 910
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 912
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 9

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 532
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    move v0, v4

    .line 546
    :goto_0
    return v0

    .line 535
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 536
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v3, v4

    .line 537
    move-object v4, v3

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    .line 538
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v7, v3

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v8, v3

    iget-object v8, v8, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    iput-object v5, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 539
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 540
    const/4 v4, 0x1

    move v2, v4

    .line 542
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->onStateChanged([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 544
    const/4 v4, 0x1

    move v2, v4

    .line 546
    :cond_2
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 8

    .prologue
    .line 933
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 934
    move-object v4, v0

    iget-object v4, v4, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 938
    :goto_0
    return-void

    .line 937
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-super {v4, v5, v6, v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 938
    goto :goto_0
.end method

.method setAllowCaching(Z)V
    .locals 4

    .prologue
    .line 893
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mAllowCaching:Z

    .line 894
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 442
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 450
    :goto_0
    return-void

    .line 446
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 447
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    .line 448
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 450
    :cond_1
    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 4

    .prologue
    .line 596
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 597
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 601
    :goto_0
    return-void

    .line 600
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move v3, v1

    iput-boolean v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    .line 601
    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 455
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 460
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 461
    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 6

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 277
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 481
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 486
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 8

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 491
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 501
    :goto_0
    return-void

    .line 495
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v2, v3

    .line 496
    move-object v3, v2

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 497
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    .line 498
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 499
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 501
    :cond_1
    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 8

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 506
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 516
    :goto_0
    return-void

    .line 510
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mVectorState:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    move-object v2, v3

    .line 511
    move-object v3, v2

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 512
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 513
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    move-object v6, v2

    iget-object v6, v6, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    move-object v7, v1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    iput-object v4, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 514
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 516
    :cond_1
    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 942
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 943
    move-object v3, v0

    iget-object v3, v3, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    .line 945
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 950
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 951
    move-object v2, v0

    iget-object v2, v2, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 955
    :goto_0
    return-void

    .line 954
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 955
    goto :goto_0
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 10

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v3

    if-nez v5, :cond_1

    .line 470
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 475
    :goto_0
    return-object v0

    .line 474
    :cond_1
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getState()[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    move v4, v5

    .line 475
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v5

    goto :goto_0
.end method
