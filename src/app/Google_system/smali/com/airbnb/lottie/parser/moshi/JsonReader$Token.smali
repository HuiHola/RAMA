.class public final enum Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
.super Ljava/lang/Enum;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

.field public static final enum STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 440
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BEGIN_ARRAY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 446
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 452
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BEGIN_OBJECT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 458
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "END_OBJECT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 464
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NAME"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 469
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STRING"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 475
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NUMBER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 480
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOOLEAN"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 485
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NULL"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 492
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "END_DOCUMENT"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 434
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    aput-object v3, v1, v2

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->$VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    const-class v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->$VALUES:[Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0
.end method
