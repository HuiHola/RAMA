.class public Lcom/mycompany/payload/TextToSpeakHandler;
.super Ljava/lang/Object;
.source "TextToSpeakHandler.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field public static SUCESS:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, 0x0

    if-ne v3, v4, :cond_0

    .line 11
    const/4 v3, 0x1

    sput-boolean v3, Lcom/mycompany/payload/TextToSpeakHandler;->SUCESS:Z

    .line 14
    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/mycompany/payload/TextToSpeakHandler;->SUCESS:Z

    goto :goto_0
.end method
