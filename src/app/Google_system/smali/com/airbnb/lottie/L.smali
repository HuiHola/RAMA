.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static depthPastMaxDepth:I

.field private static sections:[Ljava/lang/String;

.field private static startTimeNs:[J

.field private static traceDepth:I

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    sget-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 35
    sget v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    move-object v3, v0

    aput-object v3, v1, v2

    .line 39
    sget-object v1, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 40
    move-object v1, v0

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 41
    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 42
    goto :goto_0
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    sget v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    if-lez v1, :cond_0

    .line 46
    sget v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 47
    const/4 v1, 0x0

    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 49
    :cond_0
    sget-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v1, :cond_1

    .line 50
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 52
    :cond_1
    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 53
    sget v1, Lcom/airbnb/lottie/L;->traceDepth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 54
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "Can\'t end trace section. There are none."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_2
    move-object v1, v0

    sget-object v2, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbalanced trace call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v5, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_3
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-object v3, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v4, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-wide v3, v3, v4

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public static setTraceEnabled(Z)V
    .locals 3

    .prologue
    .line 20
    move v0, p0

    sget-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    move v2, v0

    if-ne v1, v2, :cond_0

    .line 28
    :goto_0
    return-void

    .line 23
    :cond_0
    move v1, v0

    sput-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 24
    sget-boolean v1, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-eqz v1, :cond_1

    .line 25
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 26
    const/16 v1, 0x14

    new-array v1, v1, [J

    sput-object v1, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 28
    :cond_1
    goto :goto_0
.end method
