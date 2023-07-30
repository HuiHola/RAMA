.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 14

    .prologue
    .line 217
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v8, v0

    .line 218
    invoke-virtual {v8}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    .line 217
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v3, v8

    .line 220
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v1

    if-ge v8, v9, :cond_1

    .line 221
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 222
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 223
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object v6, v8

    .line 224
    move-object v8, v6

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 227
    move-object v8, v6

    iget v8, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v7, v8

    .line 228
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 231
    move-object v8, v0

    move-object v9, v5

    move v10, v3

    const/4 v11, 0x0

    move v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    move-object v8, v6

    move v9, v7

    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 220
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return-void
.end method

.method private static resolveMinimumHeight(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    move v1, v3

    .line 249
    move v3, v1

    if-lez v3, :cond_0

    .line 250
    move v3, v1

    move v0, v3

    .line 260
    :goto_0
    return v0

    .line 253
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 254
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 255
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 256
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 260
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    move v10, v3

    move v11, v5

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 349
    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 24

    .prologue
    .line 71
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    const/16 v21, 0x0

    move-object/from16 v5, v21

    .line 72
    const/16 v21, 0x0

    move-object/from16 v6, v21

    .line 73
    const/16 v21, 0x0

    move-object/from16 v7, v21

    .line 75
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v21

    move/from16 v8, v21

    .line 76
    const/16 v21, 0x0

    move/from16 v9, v21

    :goto_0
    move/from16 v21, v9

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 77
    move-object/from16 v21, v2

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v10, v21

    .line 78
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 76
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 82
    :cond_0
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getId()I

    move-result v21

    move/from16 v11, v21

    .line 83
    move/from16 v21, v11

    sget v22, Landroidx/appcompat/R$id;->topPanel:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 84
    move-object/from16 v21, v10

    move-object/from16 v5, v21

    goto :goto_1

    .line 85
    :cond_1
    move/from16 v21, v11

    sget v22, Landroidx/appcompat/R$id;->buttonPanel:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 86
    move-object/from16 v21, v10

    move-object/from16 v6, v21

    goto :goto_1

    .line 87
    :cond_2
    move/from16 v21, v11

    sget v22, Landroidx/appcompat/R$id;->contentPanel:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move/from16 v21, v11

    sget v22, Landroidx/appcompat/R$id;->customPanel:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 88
    :cond_3
    move-object/from16 v21, v7

    if-eqz v21, :cond_4

    .line 90
    const/16 v21, 0x0

    move/from16 v2, v21

    .line 206
    :goto_2
    return v2

    .line 92
    :cond_4
    move-object/from16 v21, v10

    move-object/from16 v7, v21

    goto :goto_1

    .line 95
    :cond_5
    const/16 v21, 0x0

    move/from16 v2, v21

    goto :goto_2

    .line 99
    :cond_6
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v9, v21

    .line 100
    move/from16 v21, v4

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v10, v21

    .line 101
    move/from16 v21, v3

    invoke-static/range {v21 .. v21}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    move/from16 v11, v21

    .line 103
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 104
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 106
    move-object/from16 v21, v5

    if-eqz v21, :cond_7

    .line 107
    move-object/from16 v21, v5

    move/from16 v22, v3

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 109
    move/from16 v21, v13

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 110
    move/from16 v21, v12

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredState()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v21

    move/from16 v12, v21

    .line 113
    :cond_7
    const/16 v21, 0x0

    move/from16 v14, v21

    .line 114
    const/16 v21, 0x0

    move/from16 v15, v21

    .line 115
    move-object/from16 v21, v6

    if-eqz v21, :cond_8

    .line 116
    move-object/from16 v21, v6

    move/from16 v22, v3

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 117
    move-object/from16 v21, v6

    invoke-static/range {v21 .. v21}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v21

    move/from16 v14, v21

    .line 118
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v22, v14

    sub-int v21, v21, v22

    move/from16 v15, v21

    .line 120
    move/from16 v21, v13

    move/from16 v22, v14

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 121
    move/from16 v21, v12

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredState()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v21

    move/from16 v12, v21

    .line 124
    :cond_8
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 125
    move-object/from16 v21, v7

    if-eqz v21, :cond_9

    .line 127
    move/from16 v21, v9

    if-nez v21, :cond_e

    .line 128
    const/16 v21, 0x0

    move/from16 v17, v21

    .line 134
    :goto_3
    move-object/from16 v21, v7

    move/from16 v22, v3

    move/from16 v23, v17

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 135
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v16, v21

    .line 137
    move/from16 v21, v13

    move/from16 v22, v16

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 138
    move/from16 v21, v12

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredState()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v21

    move/from16 v12, v21

    .line 141
    :cond_9
    move/from16 v21, v10

    move/from16 v22, v13

    sub-int v21, v21, v22

    move/from16 v17, v21

    .line 146
    move-object/from16 v21, v6

    if-eqz v21, :cond_b

    .line 147
    move/from16 v21, v13

    move/from16 v22, v14

    sub-int v21, v21, v22

    move/from16 v13, v21

    .line 149
    move/from16 v21, v17

    move/from16 v22, v15

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v18, v21

    .line 150
    move/from16 v21, v18

    if-lez v21, :cond_a

    .line 151
    move/from16 v21, v17

    move/from16 v22, v18

    sub-int v21, v21, v22

    move/from16 v17, v21

    .line 152
    move/from16 v21, v14

    move/from16 v22, v18

    add-int v21, v21, v22

    move/from16 v14, v21

    .line 155
    :cond_a
    move/from16 v21, v14

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v19, v21

    .line 157
    move-object/from16 v21, v6

    move/from16 v22, v3

    move/from16 v23, v19

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 159
    move/from16 v21, v13

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 160
    move/from16 v21, v12

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredState()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v21

    move/from16 v12, v21

    .line 165
    :cond_b
    move-object/from16 v21, v7

    if-eqz v21, :cond_c

    move/from16 v21, v17

    if-lez v21, :cond_c

    .line 166
    move/from16 v21, v13

    move/from16 v22, v16

    sub-int v21, v21, v22

    move/from16 v13, v21

    .line 168
    move/from16 v21, v17

    move/from16 v18, v21

    .line 169
    move/from16 v21, v17

    move/from16 v22, v18

    sub-int v21, v21, v22

    move/from16 v17, v21

    .line 170
    move/from16 v21, v16

    move/from16 v22, v18

    add-int v21, v21, v22

    move/from16 v16, v21

    .line 175
    move/from16 v21, v16

    move/from16 v22, v9

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v19, v21

    .line 177
    move-object/from16 v21, v7

    move/from16 v22, v3

    move/from16 v23, v19

    invoke-virtual/range {v21 .. v23}, Landroid/view/View;->measure(II)V

    .line 179
    move/from16 v21, v13

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 180
    move/from16 v21, v12

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredState()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v21

    move/from16 v12, v21

    .line 184
    :cond_c
    const/16 v21, 0x0

    move/from16 v18, v21

    .line 185
    const/16 v21, 0x0

    move/from16 v19, v21

    :goto_4
    move/from16 v21, v19

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 186
    move-object/from16 v21, v2

    move/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v20, v21

    .line 187
    move-object/from16 v21, v20

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 188
    move/from16 v21, v18

    move-object/from16 v22, v20

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v18, v21

    .line 185
    :cond_d
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 130
    :cond_e
    const/16 v21, 0x0

    move/from16 v22, v10

    move/from16 v23, v13

    sub-int v22, v22, v23

    .line 131
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v22, v9

    .line 130
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v17, v21

    goto/16 :goto_3

    .line 192
    :cond_f
    move/from16 v21, v18

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v23

    add-int v22, v22, v23

    add-int v21, v21, v22

    move/from16 v18, v21

    .line 194
    move/from16 v21, v18

    move/from16 v22, v3

    move/from16 v23, v12

    invoke-static/range {v21 .. v23}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v21

    move/from16 v19, v21

    .line 196
    move/from16 v21, v13

    move/from16 v22, v4

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v21

    move/from16 v20, v21

    .line 198
    move-object/from16 v21, v2

    move/from16 v22, v19

    move/from16 v23, v20

    invoke-virtual/range {v21 .. v23}, Landroidx/appcompat/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 202
    move/from16 v21, v11

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 203
    move-object/from16 v21, v2

    move/from16 v22, v8

    move/from16 v23, v4

    invoke-direct/range {v21 .. v23}, Landroidx/appcompat/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 206
    :cond_10
    const/16 v21, 0x1

    move/from16 v2, v21

    goto/16 :goto_2
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 35

    .prologue
    .line 265
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v29

    move/from16 v8, v29

    .line 268
    move/from16 v29, v6

    move/from16 v30, v4

    sub-int v29, v29, v30

    move/from16 v9, v29

    .line 269
    move/from16 v29, v9

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v10, v29

    .line 272
    move/from16 v29, v9

    move/from16 v30, v8

    sub-int v29, v29, v30

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v30

    sub-int v29, v29, v30

    move/from16 v11, v29

    .line 274
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v29

    move/from16 v12, v29

    .line 275
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v29

    move/from16 v13, v29

    .line 276
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getGravity()I

    move-result v29

    move/from16 v14, v29

    .line 277
    move/from16 v29, v14

    const/16 v30, 0x70

    and-int/lit8 v29, v29, 0x70

    move/from16 v15, v29

    .line 278
    move/from16 v29, v14

    const v30, 0x800007

    and-int v29, v29, v30

    move/from16 v16, v29

    .line 281
    move/from16 v29, v15

    sparse-switch v29, :sswitch_data_0

    .line 294
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v29

    move/from16 v17, v29

    .line 298
    :goto_0
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v18, v29

    .line 299
    move-object/from16 v29, v18

    if-nez v29, :cond_3

    const/16 v29, 0x0

    .line 300
    :goto_1
    move/from16 v19, v29

    .line 302
    const/16 v29, 0x0

    move/from16 v20, v29

    :goto_2
    move/from16 v29, v20

    move/from16 v30, v13

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 303
    move-object/from16 v29, v2

    move/from16 v30, v20

    invoke-virtual/range {v29 .. v30}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v21, v29

    .line 304
    move-object/from16 v29, v21

    if-eqz v29, :cond_2

    move-object/from16 v29, v21

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    .line 305
    move-object/from16 v29, v21

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    move/from16 v22, v29

    .line 306
    move-object/from16 v29, v21

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    move/from16 v23, v29

    .line 308
    move-object/from16 v29, v21

    .line 309
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-object/from16 v24, v29

    .line 311
    move-object/from16 v29, v24

    move-object/from16 v0, v29

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    move/from16 v29, v0

    move/from16 v25, v29

    .line 312
    move/from16 v29, v25

    if-gez v29, :cond_0

    .line 313
    move/from16 v29, v16

    move/from16 v25, v29

    .line 315
    :cond_0
    move-object/from16 v29, v2

    invoke-static/range {v29 .. v29}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v29

    move/from16 v26, v29

    .line 316
    move/from16 v29, v25

    move/from16 v30, v26

    invoke-static/range {v29 .. v30}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v29

    move/from16 v27, v29

    .line 320
    move/from16 v29, v27

    const/16 v30, 0x7

    and-int/lit8 v29, v29, 0x7

    sparse-switch v29, :sswitch_data_1

    .line 332
    move/from16 v29, v8

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v28, v29

    .line 336
    :goto_3
    move-object/from16 v29, v2

    move/from16 v30, v20

    invoke-virtual/range {v29 .. v30}, Landroidx/appcompat/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 337
    move/from16 v29, v17

    move/from16 v30, v19

    add-int v29, v29, v30

    move/from16 v17, v29

    .line 340
    :cond_1
    move/from16 v29, v17

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v17, v29

    .line 341
    move-object/from16 v29, v2

    move-object/from16 v30, v21

    move/from16 v31, v28

    move/from16 v32, v17

    move/from16 v33, v22

    move/from16 v34, v23

    invoke-direct/range {v29 .. v34}, Landroidx/appcompat/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 342
    move/from16 v29, v17

    move/from16 v30, v23

    move-object/from16 v31, v24

    move-object/from16 v0, v31

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v29, v29, v30

    move/from16 v17, v29

    .line 302
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 284
    :sswitch_0
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v29

    move/from16 v30, v7

    add-int v29, v29, v30

    move/from16 v30, v5

    sub-int v29, v29, v30

    move/from16 v30, v12

    sub-int v29, v29, v30

    move/from16 v17, v29

    .line 285
    goto/16 :goto_0

    .line 289
    :sswitch_1
    move-object/from16 v29, v2

    invoke-virtual/range {v29 .. v29}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v29

    move/from16 v30, v7

    move/from16 v31, v5

    sub-int v30, v30, v31

    move/from16 v31, v12

    sub-int v30, v30, v31

    const/16 v31, 0x2

    div-int/lit8 v30, v30, 0x2

    add-int v29, v29, v30

    move/from16 v17, v29

    .line 290
    goto/16 :goto_0

    .line 299
    :cond_3
    move-object/from16 v29, v18

    .line 300
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    goto/16 :goto_1

    .line 322
    :sswitch_2
    move/from16 v29, v8

    move/from16 v30, v11

    move/from16 v31, v22

    sub-int v30, v30, v31

    const/16 v31, 0x2

    div-int/lit8 v30, v30, 0x2

    add-int v29, v29, v30

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v28, v29

    .line 324
    goto/16 :goto_3

    .line 327
    :sswitch_3
    move/from16 v29, v10

    move/from16 v30, v22

    sub-int v29, v29, v30

    move-object/from16 v30, v24

    move-object/from16 v0, v30

    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v28, v29

    .line 328
    goto/16 :goto_3

    .line 345
    :cond_4
    return-void

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 320
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 68
    :cond_0
    return-void
.end method
