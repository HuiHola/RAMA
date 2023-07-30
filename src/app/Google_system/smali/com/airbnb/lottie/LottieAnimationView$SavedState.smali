.class Lcom/airbnb/lottie/LottieAnimationView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/lottie/LottieAnimationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animationName:Ljava/lang/String;

.field animationResId:I

.field imageAssetsFolder:Ljava/lang/String;

.field isAnimating:Z

.field progress:F

.field repeatCount:I

.field repeatMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1125
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState$1;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 1105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1106
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 1107
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 1108
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 1109
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 1110
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    .line 1111
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    .line 1112
    return-void

    .line 1108
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/airbnb/lottie/LottieAnimationView$1;)V
    .locals 5

    .prologue
    .line 1091
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1101
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1102
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 1116
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1117
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1118
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1119
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1121
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    return-void

    .line 1119
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
