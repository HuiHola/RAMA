.class Landroidx/appcompat/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesFlusher"

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method static flush(Landroid/content/res/Resources;)V
    .locals 3
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 50
    move-object v1, v0

    invoke-static {v1}, Landroidx/appcompat/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)V

    .line 56
    :cond_1
    :goto_1
    goto :goto_0

    .line 51
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 52
    move-object v1, v0

    invoke-static {v1}, Landroidx/appcompat/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)V

    goto :goto_1

    .line 53
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 54
    move-object v1, v0

    invoke-static {v1}, Landroidx/appcompat/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)V

    goto :goto_1
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)V
    .locals 6
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    sget-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v3, :cond_0

    .line 62
    :try_start_0
    const-class v3, Landroid/content/res/Resources;

    const-string v4, "mDrawableCache"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 63
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 69
    :cond_0
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    .line 70
    const/4 v3, 0x0

    move-object v1, v3

    .line 72
    :try_start_1
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 76
    :goto_1
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 77
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 80
    :cond_1
    return-void

    .line 64
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 65
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve Resources#mDrawableCache field"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    .line 73
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 74
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mDrawableCache"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)V
    .locals 6
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    sget-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v3, :cond_0

    .line 86
    :try_start_0
    const-class v3, Landroid/content/res/Resources;

    const-string v4, "mDrawableCache"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 87
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 94
    :cond_0
    const/4 v3, 0x0

    move-object v1, v3

    .line 95
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    .line 97
    :try_start_1
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v3

    .line 103
    :cond_1
    :goto_1
    move-object v3, v1

    if-nez v3, :cond_2

    .line 109
    :goto_2
    return-void

    .line 88
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 89
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve Resources#mDrawableCache field"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    .line 98
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 99
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mDrawableCache"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1

    .line 108
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 109
    goto :goto_2
.end method

.method private static flushNougats(Landroid/content/res/Resources;)V
    .locals 7
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    sget-boolean v4, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    if-nez v4, :cond_0

    .line 115
    :try_start_0
    const-class v4, Landroid/content/res/Resources;

    const-string v5, "mResourcesImpl"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    .line 116
    sget-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    .line 123
    :cond_0
    sget-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_1

    .line 162
    :goto_1
    return-void

    .line 117
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 118
    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve Resources#mResourcesImpl field"

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0

    .line 128
    :cond_1
    const/4 v4, 0x0

    move-object v1, v4

    .line 130
    :try_start_1
    sget-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v1, v4

    .line 135
    :goto_2
    move-object v4, v1

    if-nez v4, :cond_2

    .line 137
    goto :goto_1

    .line 131
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 132
    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve value from Resources#mResourcesImpl"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_2

    .line 140
    :cond_2
    sget-boolean v4, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v4, :cond_3

    .line 142
    move-object v4, v1

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mDrawableCache"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 143
    sget-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    :goto_3
    const/4 v4, 0x1

    sput-boolean v4, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 150
    :cond_3
    const/4 v4, 0x0

    move-object v2, v4

    .line 151
    sget-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_4

    .line 153
    :try_start_3
    sget-object v4, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    move-object v2, v4

    .line 159
    :cond_4
    :goto_4
    move-object v4, v2

    if-eqz v4, :cond_5

    .line 160
    move-object v4, v2

    invoke-static {v4}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 162
    :cond_5
    goto :goto_1

    .line 144
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 145
    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve ResourcesImpl#mDrawableCache field"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_3

    .line 154
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 155
    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_4
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)V
    .locals 6
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    sget-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    if-nez v3, :cond_0

    .line 168
    :try_start_0
    const-string v3, "android.content.res.ThemedResourceCache"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    .line 175
    :cond_0
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 207
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 170
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not find ThemedResourceCache class"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0

    .line 180
    :cond_1
    sget-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v3, :cond_2

    .line 182
    :try_start_1
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const-string v4, "mUnthemedEntries"

    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 184
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_2
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 191
    :cond_2
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_3

    .line 193
    goto :goto_1

    .line 185
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 186
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_2

    .line 196
    :cond_3
    const/4 v3, 0x0

    move-object v1, v3

    .line 198
    :try_start_2
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    move-object v4, v0

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v3

    .line 204
    :goto_3
    move-object v3, v1

    if-eqz v3, :cond_4

    .line 205
    move-object v3, v1

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 207
    :cond_4
    goto :goto_1

    .line 200
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 201
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_3
.end method
