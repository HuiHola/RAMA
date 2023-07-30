.class public Landroidx/core/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontsContractCompat$FontRequestCallback;,
        Landroidx/core/provider/FontsContractCompat$FontFamilyResult;,
        Landroidx/core/provider/FontsContractCompat$FontInfo;,
        Landroidx/core/provider/FontsContractCompat$TypefaceResult;,
        Landroidx/core/provider/FontsContractCompat$Columns;
    }
.end annotation


# static fields
.field private static final BACKGROUND_THREAD_KEEP_ALIVE_DURATION_MS:I = 0x2710

.field public static final PARCEL_FONT_RESULTS:Ljava/lang/String; = "font_results"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final RESULT_CODE_PROVIDER_NOT_FOUND:I = -0x1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field static final RESULT_CODE_WRONG_CERTIFICATES:I = -0x2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FontsContractCompat"

.field private static final sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;

.field static final sPendingReplies:Landroidx/collection/SimpleArrayMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback",
            "<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 174
    new-instance v0, Landroidx/collection/LruCache;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 177
    new-instance v0, Landroidx/core/provider/SelfDestructiveThread;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "fonts"

    const/16 v3, 0xa

    const/16 v4, 0x2710

    invoke-direct {v1, v2, v3, v4}, Landroidx/core/provider/SelfDestructiveThread;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    .line 203
    new-instance v0, Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    .line 206
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    .line 776
    new-instance v0, Landroidx/core/provider/FontsContractCompat$5;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Landroidx/core/provider/FontsContractCompat$5;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 662
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 805
    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 806
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 807
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    :cond_0
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 793
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 794
    const/4 v3, 0x0

    move v0, v3

    .line 801
    :goto_0
    return v0

    .line 796
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 797
    move-object v3, v0

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 798
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 796
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 801
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    .line 720
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 719
    invoke-static {v5, v6, v7}, Landroidx/core/provider/FontsContractCompat;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    move-object v3, v5

    .line 721
    move-object v5, v3

    if-nez v5, :cond_0

    .line 722
    new-instance v5, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    move-object v0, v5

    .line 727
    :goto_0
    return-object v0

    .line 725
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v8, v1

    invoke-static {v5, v6, v7, v8}, Landroidx/core/provider/FontsContractCompat;->getFontFromProvider(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v5

    move-object v4, v5

    .line 727
    new-instance v5, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    move-object v0, v5

    goto :goto_0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 769
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 770
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 773
    :goto_0
    return-object v0

    .line 772
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v3

    move v2, v3

    .line 773
    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static getFontFromProvider(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 31
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 816
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v22

    .line 817
    new-instance v22, Landroid/net/Uri$Builder;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    invoke-direct/range {v23 .. v23}, Landroid/net/Uri$Builder;-><init>()V

    const-string v23, "content"

    invoke-virtual/range {v22 .. v23}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v22

    move-object/from16 v23, v4

    .line 818
    invoke-virtual/range {v22 .. v23}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v22

    .line 819
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v7, v22

    .line 820
    new-instance v22, Landroid/net/Uri$Builder;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    invoke-direct/range {v23 .. v23}, Landroid/net/Uri$Builder;-><init>()V

    const-string v23, "content"

    invoke-virtual/range {v22 .. v23}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v22

    move-object/from16 v23, v4

    .line 821
    invoke-virtual/range {v22 .. v23}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v22

    const-string v23, "file"

    .line 822
    invoke-virtual/range {v22 .. v23}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v22

    .line 823
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v8, v22

    .line 824
    const/16 v22, 0x0

    move-object/from16 v9, v22

    .line 826
    :try_start_0
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 827
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v23, v7

    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x0

    const-string v27, "_id"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x1

    const-string v27, "file_id"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x2

    const-string v27, "font_ttc_index"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x3

    const-string v27, "font_variation_settings"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x4

    const-string v27, "font_weight"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x5

    const-string v27, "font_italic"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x6

    const-string v27, "result_code"

    aput-object v27, v25, v26

    const-string v25, "query = ?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const/16 v28, 0x0

    move-object/from16 v29, v3

    .line 831
    invoke-virtual/range {v29 .. v29}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v27, 0x0

    move-object/from16 v28, v5

    .line 827
    invoke-virtual/range {v22 .. v28}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v22

    move-object/from16 v9, v22

    .line 840
    :goto_0
    move-object/from16 v22, v9

    if-eqz v22, :cond_6

    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v22

    if-lez v22, :cond_6

    .line 841
    move-object/from16 v22, v9

    const-string v23, "result_code"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v10, v22

    .line 842
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v22

    .line 843
    move-object/from16 v22, v9

    const-string v23, "_id"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v11, v22

    .line 844
    move-object/from16 v22, v9

    const-string v23, "file_id"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v12, v22

    .line 845
    move-object/from16 v22, v9

    const-string v23, "font_ttc_index"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v13, v22

    .line 846
    move-object/from16 v22, v9

    const-string v23, "font_weight"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v14, v22

    .line 847
    move-object/from16 v22, v9

    const-string v23, "font_italic"

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v15, v22

    .line 848
    :goto_1
    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 849
    move/from16 v22, v10

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v22, v9

    move/from16 v23, v10

    .line 850
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    :goto_2
    move/from16 v16, v22

    .line 851
    move/from16 v22, v13

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v22, v9

    move/from16 v23, v13

    .line 852
    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    :goto_3
    move/from16 v17, v22

    .line 854
    move/from16 v22, v12

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 855
    move-object/from16 v22, v9

    move/from16 v23, v11

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v19, v22

    .line 856
    move-object/from16 v22, v7

    move-wide/from16 v23, v19

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v18, v22

    .line 862
    :goto_4
    move/from16 v22, v14

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object/from16 v22, v9

    move/from16 v23, v14

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    :goto_5
    move/from16 v19, v22

    .line 863
    move/from16 v22, v15

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v22, v9

    move/from16 v23, v15

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    :goto_6
    move/from16 v20, v22

    .line 865
    move-object/from16 v22, v6

    new-instance v23, Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    move-object/from16 v25, v18

    move/from16 v26, v17

    move/from16 v27, v19

    move/from16 v28, v20

    move/from16 v29, v16

    invoke-direct/range {v24 .. v29}, Landroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 866
    goto/16 :goto_1

    .line 834
    :cond_0
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v23, v7

    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x0

    const-string v27, "_id"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x1

    const-string v27, "file_id"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x2

    const-string v27, "font_ttc_index"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x3

    const-string v27, "font_variation_settings"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x4

    const-string v27, "font_weight"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x5

    const-string v27, "font_italic"

    aput-object v27, v25, v26

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    const/16 v26, 0x6

    const-string v27, "result_code"

    aput-object v27, v25, v26

    const-string v25, "query = ?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    const/16 v28, 0x0

    move-object/from16 v29, v3

    .line 838
    invoke-virtual/range {v29 .. v29}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v27, 0x0

    .line 834
    invoke-virtual/range {v22 .. v27}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    move-object/from16 v9, v22

    goto/16 :goto_0

    .line 850
    :cond_1
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 852
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 858
    :cond_3
    move-object/from16 v22, v9

    move/from16 v23, v12

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v19, v22

    .line 859
    move-object/from16 v22, v8

    move-wide/from16 v23, v19

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    move-object/from16 v18, v22

    goto/16 :goto_4

    .line 862
    :cond_4
    const/16 v22, 0x190

    goto/16 :goto_5

    .line 863
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 869
    :cond_6
    move-object/from16 v22, v9

    if-eqz v22, :cond_7

    .line 870
    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 873
    :cond_7
    move-object/from16 v22, v6

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object/from16 v2, v22

    return-object v2

    .line 869
    :catchall_0
    move-exception v22

    move-object/from16 v21, v22

    move-object/from16 v22, v9

    if-eqz v22, :cond_8

    .line 870
    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v22, v21

    throw v22
.end method

.method static getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v1

    :try_start_0
    invoke-static {v5, v6, v7}, Landroidx/core/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 190
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v5

    if-nez v5, :cond_1

    .line 191
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v3

    .line 192
    invoke-virtual {v7}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v7

    move v8, v2

    .line 191
    invoke-static {v5, v6, v7, v8}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v4, v5

    .line 193
    new-instance v5, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    move-object v8, v4

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v5

    .line 200
    :goto_1
    return-object v0

    .line 187
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 188
    new-instance v5, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v5

    goto :goto_1

    .line 193
    :cond_0
    const/4 v8, -0x3

    goto :goto_0

    .line 197
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, -0x2

    :goto_2
    move v4, v5

    .line 200
    new-instance v5, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v5

    goto :goto_1

    .line 197
    :cond_2
    const/4 v5, -0x3

    goto :goto_2
.end method

.method public static getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .locals 21
    .param p2    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v1

    invoke-virtual {v15}, Landroidx/core/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 235
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Typeface;

    move-object v8, v14

    .line 236
    move-object v14, v8

    if-eqz v14, :cond_1

    .line 237
    move-object v14, v2

    if-eqz v14, :cond_0

    .line 238
    move-object v14, v2

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 240
    :cond_0
    move-object v14, v8

    move-object v0, v14

    .line 320
    :goto_0
    return-object v0

    .line 243
    :cond_1
    move v14, v4

    if-eqz v14, :cond_4

    move v14, v5

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    .line 245
    move-object v14, v0

    move-object v15, v1

    move/from16 v16, v6

    invoke-static/range {v14 .. v16}, Landroidx/core/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v14

    move-object v9, v14

    .line 246
    move-object v14, v2

    if-eqz v14, :cond_2

    .line 247
    move-object v14, v9

    iget v14, v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v14, :cond_3

    .line 248
    move-object v14, v2

    move-object v15, v9

    iget-object v15, v15, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 253
    :cond_2
    :goto_1
    move-object v14, v9

    iget-object v14, v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    move-object v0, v14

    goto :goto_0

    .line 250
    :cond_3
    move-object v14, v2

    move-object v15, v9

    iget v15, v15, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_1

    .line 256
    :cond_4
    new-instance v14, Landroidx/core/provider/FontsContractCompat$1;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v6

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v19}, Landroidx/core/provider/FontsContractCompat$1;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/lang/String;)V

    move-object v9, v14

    .line 267
    move v14, v4

    if-eqz v14, :cond_5

    .line 269
    :try_start_0
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    move-object v15, v9

    move/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Landroidx/core/provider/SelfDestructiveThread;->postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    iget-object v14, v14, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v14

    goto :goto_0

    .line 270
    :catch_0
    move-exception v14

    move-object v10, v14

    .line 271
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 274
    :cond_5
    move-object v14, v2

    if-nez v14, :cond_7

    const/4 v14, 0x0

    :goto_2
    move-object v10, v14

    .line 289
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v11, v15

    monitor-enter v14

    .line 290
    :try_start_1
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 293
    move-object v14, v10

    if-eqz v14, :cond_6

    .line 294
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    move-object v15, v7

    invoke-virtual {v14, v15}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 296
    :cond_6
    const/4 v14, 0x0

    move-object v15, v11

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v14

    goto/16 :goto_0

    .line 274
    :cond_7
    new-instance v14, Landroidx/core/provider/FontsContractCompat$2;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v17}, Landroidx/core/provider/FontsContractCompat$2;-><init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 298
    :cond_8
    move-object v14, v10

    if-eqz v14, :cond_9

    .line 299
    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v14

    .line 300
    move-object v14, v12

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 301
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    move-object v15, v7

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 303
    :cond_9
    move-object v14, v11

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    sget-object v14, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    move-object v15, v9

    new-instance v16, Landroidx/core/provider/FontsContractCompat$3;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Landroidx/core/provider/FontsContractCompat$3;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroidx/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V

    .line 320
    const/4 v14, 0x0

    move-object v0, v14

    goto/16 :goto_0

    .line 303
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v11

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v13

    throw v14
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 15
    .param p0    # Landroid/content/pm/PackageManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 736
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v1

    invoke-virtual {v10}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 737
    move-object v10, v0

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v10

    move-object v4, v10

    .line 738
    move-object v10, v4

    if-nez v10, :cond_0

    .line 739
    new-instance v10, Landroid/content/pm/PackageManager$NameNotFoundException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package found for authority: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 743
    :cond_0
    move-object v10, v4

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 744
    new-instance v10, Landroid/content/pm/PackageManager$NameNotFoundException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found content provider "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", but package was not "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    .line 746
    invoke-virtual {v13}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 752
    :cond_1
    move-object v10, v0

    move-object v11, v4

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    move-object v6, v10

    .line 754
    move-object v10, v6

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10}, Landroidx/core/provider/FontsContractCompat;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v10

    move-object v5, v10

    .line 755
    move-object v10, v5

    sget-object v11, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 756
    move-object v10, v1

    move-object v11, v2

    invoke-static {v10, v11}, Landroidx/core/provider/FontsContractCompat;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 757
    const/4 v10, 0x0

    move v8, v10

    :goto_0
    move v10, v8

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 759
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v7

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v10

    .line 760
    move-object v10, v9

    sget-object v11, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 761
    move-object v10, v5

    move-object v11, v9

    invoke-static {v10, v11}, Landroidx/core/provider/FontsContractCompat;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 762
    move-object v10, v4

    move-object v0, v10

    .line 765
    :goto_1
    return-object v0

    .line 757
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 765
    :cond_3
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1
.end method

.method public static prepareFontData(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 14
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/core/provider/FontsContractCompat$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    new-instance v10, Ljava/util/HashMap;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v3, v10

    .line 683
    move-object v10, v1

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 684
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v10

    if-eqz v10, :cond_0

    .line 683
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 688
    :cond_0
    move-object v10, v7

    invoke-virtual {v10}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v10

    move-object v8, v10

    .line 689
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 690
    goto :goto_1

    .line 693
    :cond_1
    move-object v10, v0

    move-object v11, v2

    move-object v12, v8

    invoke-static {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 694
    move-object v10, v3

    move-object v11, v8

    move-object v12, v9

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 696
    :cond_2
    move-object v10, v3

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    move-object v0, v10

    return-object v0
.end method

.method public static requestFont(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/provider/FontRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    new-instance v5, Landroid/os/Handler;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v4, v5

    .line 533
    move-object v5, v3

    new-instance v6, Landroidx/core/provider/FontsContractCompat$4;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v4

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/core/provider/FontsContractCompat$4;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 645
    return-void
.end method

.method public static resetCache()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 225
    sget-object v0, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 226
    return-void
.end method
