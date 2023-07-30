.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/AbstractList;-><init>()V

    .line 31
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 32
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lokio/Options;->trie:[I

    .line 33
    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    move-wide/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 124
    :cond_0
    move/from16 v21, v7

    move/from16 v10, v21

    :goto_0
    move/from16 v21, v10

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 125
    move-object/from16 v21, v6

    move/from16 v22, v10

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lokio/ByteString;

    invoke-virtual/range {v21 .. v21}, Lokio/ByteString;->size()I

    move-result v21

    move/from16 v22, v5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    new-instance v21, Ljava/lang/AssertionError;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 124
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 128
    :cond_2
    move-object/from16 v21, v6

    move/from16 v22, v7

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lokio/ByteString;

    move-object/from16 v10, v21

    .line 129
    move-object/from16 v21, v6

    move/from16 v22, v8

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lokio/ByteString;

    move-object/from16 v11, v21

    .line 130
    const/16 v21, -0x1

    move/from16 v12, v21

    .line 133
    move/from16 v21, v5

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 134
    move-object/from16 v21, v9

    move/from16 v22, v7

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v12, v21

    .line 135
    add-int/lit8 v7, v7, 0x1

    .line 136
    move-object/from16 v21, v6

    move/from16 v22, v7

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lokio/ByteString;

    move-object/from16 v10, v21

    .line 139
    :cond_3
    move-object/from16 v21, v10

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lokio/ByteString;->getByte(I)B

    move-result v21

    move-object/from16 v22, v11

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Lokio/ByteString;->getByte(I)B

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 141
    const/16 v21, 0x1

    move/from16 v13, v21

    .line 142
    move/from16 v21, v7

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v14, v21

    :goto_1
    move/from16 v21, v14

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 143
    move-object/from16 v21, v6

    move/from16 v22, v14

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lokio/ByteString;

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lokio/ByteString;->getByte(I)B

    move-result v21

    move-object/from16 v22, v6

    move/from16 v23, v14

    .line 144
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lokio/ByteString;

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Lokio/ByteString;->getByte(I)B

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 145
    add-int/lit8 v13, v13, 0x1

    .line 142
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 150
    :cond_5
    move-wide/from16 v21, v2

    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    const-wide/16 v23, 0x2

    add-long v21, v21, v23

    move/from16 v23, v13

    const/16 v24, 0x2

    mul-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    move-wide/from16 v14, v21

    .line 152
    move-object/from16 v21, v4

    move/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 153
    move-object/from16 v21, v4

    move/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 155
    move/from16 v21, v7

    move/from16 v16, v21

    :goto_2
    move/from16 v21, v16

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 156
    move-object/from16 v21, v6

    move/from16 v22, v16

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lokio/ByteString;

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lokio/ByteString;->getByte(I)B

    move-result v21

    move/from16 v17, v21

    .line 157
    move/from16 v21, v16

    move/from16 v22, v7

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move/from16 v21, v17

    move-object/from16 v22, v6

    move/from16 v23, v16

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lokio/ByteString;

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Lokio/ByteString;->getByte(I)B

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 158
    :cond_6
    move-object/from16 v21, v4

    move/from16 v22, v17

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 155
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 162
    :cond_8
    new-instance v21, Lokio/Buffer;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    invoke-direct/range {v22 .. v22}, Lokio/Buffer;-><init>()V

    move-object/from16 v16, v21

    .line 163
    move/from16 v21, v7

    move/from16 v17, v21

    .line 164
    :goto_3
    move/from16 v21, v17

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 165
    move-object/from16 v21, v6

    move/from16 v22, v17

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lokio/ByteString;

    move/from16 v22, v5

    invoke-virtual/range {v21 .. v22}, Lokio/ByteString;->getByte(I)B

    move-result v21

    move/from16 v18, v21

    .line 166
    move/from16 v21, v8

    move/from16 v19, v21

    .line 167
    move/from16 v21, v17

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v20, v21

    :goto_4
    move/from16 v21, v20

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 168
    move/from16 v21, v18

    move-object/from16 v22, v6

    move/from16 v23, v20

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lokio/ByteString;

    move/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Lokio/ByteString;->getByte(I)B

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 169
    move/from16 v21, v20

    move/from16 v19, v21

    .line 174
    :cond_9
    move/from16 v21, v17

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v22, v19

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    move/from16 v21, v5

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v22, v6

    move/from16 v23, v17

    .line 175
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lokio/ByteString;

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 177
    move-object/from16 v21, v4

    move-object/from16 v22, v9

    move/from16 v23, v17

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 191
    :goto_5
    move/from16 v21, v19

    move/from16 v17, v21

    .line 192
    goto/16 :goto_3

    .line 167
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 180
    :cond_b
    move-object/from16 v21, v4

    const-wide/16 v22, -0x1

    move-wide/from16 v24, v14

    move-object/from16 v26, v16

    invoke-static/range {v26 .. v26}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 181
    move-wide/from16 v21, v14

    move-object/from16 v23, v16

    move/from16 v24, v5

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v17

    move/from16 v27, v19

    move-object/from16 v28, v9

    invoke-static/range {v21 .. v28}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    goto :goto_5

    .line 194
    :cond_c
    move-object/from16 v21, v4

    move-object/from16 v22, v16

    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    invoke-virtual/range {v21 .. v24}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 238
    :goto_6
    return-void

    .line 198
    :cond_d
    const/16 v21, 0x0

    move/from16 v13, v21

    .line 199
    move/from16 v21, v5

    move/from16 v14, v21

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lokio/ByteString;->size()I

    move-result v21

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->size()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v15, v21

    :goto_7
    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 200
    move-object/from16 v21, v10

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lokio/ByteString;->getByte(I)B

    move-result v21

    move-object/from16 v22, v11

    move/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Lokio/ByteString;->getByte(I)B

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 201
    add-int/lit8 v13, v13, 0x1

    .line 199
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 208
    :cond_e
    move-wide/from16 v21, v2

    move-object/from16 v23, v4

    invoke-static/range {v23 .. v23}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    const-wide/16 v23, 0x2

    add-long v21, v21, v23

    move/from16 v23, v13

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    const-wide/16 v23, 0x1

    add-long v21, v21, v23

    move-wide/from16 v14, v21

    .line 210
    move-object/from16 v21, v4

    move/from16 v22, v13

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 211
    move-object/from16 v21, v4

    move/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 213
    move/from16 v21, v5

    move/from16 v16, v21

    :goto_8
    move/from16 v21, v16

    move/from16 v22, v5

    move/from16 v23, v13

    add-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 214
    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Lokio/ByteString;->getByte(I)B

    move-result v22

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 213
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 217
    :cond_f
    move/from16 v21, v7

    const/16 v22, 0x1

    add-int/lit8 v21, v21, 0x1

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 219
    move/from16 v21, v5

    move/from16 v22, v13

    add-int v21, v21, v22

    move-object/from16 v22, v6

    move/from16 v23, v7

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lokio/ByteString;

    invoke-virtual/range {v22 .. v22}, Lokio/ByteString;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 220
    new-instance v21, Ljava/lang/AssertionError;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 222
    :cond_10
    move-object/from16 v21, v4

    move-object/from16 v22, v9

    move/from16 v23, v7

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    goto/16 :goto_6

    .line 225
    :cond_11
    new-instance v21, Lokio/Buffer;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    invoke-direct/range {v22 .. v22}, Lokio/Buffer;-><init>()V

    move-object/from16 v16, v21

    .line 226
    move-object/from16 v21, v4

    const-wide/16 v22, -0x1

    move-wide/from16 v24, v14

    move-object/from16 v26, v16

    invoke-static/range {v26 .. v26}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v21

    .line 227
    move-wide/from16 v21, v14

    move-object/from16 v23, v16

    move/from16 v24, v5

    move/from16 v25, v13

    add-int v24, v24, v25

    move-object/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    invoke-static/range {v21 .. v28}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 235
    move-object/from16 v21, v4

    move-object/from16 v22, v16

    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v23

    invoke-virtual/range {v21 .. v24}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto/16 :goto_6
.end method

.method private static intCount(Lokio/Buffer;)I
    .locals 5

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    long-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 16

    .prologue
    .line 36
    move-object/from16 v0, p0

    move-object v7, v0

    array-length v7, v7

    if-nez v7, :cond_0

    .line 38
    new-instance v7, Lokio/Options;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const/4 v9, 0x0

    new-array v9, v9, [Lokio/ByteString;

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-direct {v8, v9, v10}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    move-object v0, v7

    .line 88
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v7

    .line 44
    move-object v7, v1

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v7, Ljava/util/ArrayList;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 46
    const/4 v7, 0x0

    move v3, v7

    :goto_1
    move v7, v3

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 47
    move-object v7, v2

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    :cond_1
    const/4 v7, 0x0

    move v3, v7

    :goto_2
    move v7, v3

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 50
    move-object v7, v1

    move-object v8, v0

    move v9, v3

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    move v4, v7

    .line 51
    move-object v7, v2

    move v8, v4

    move v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 53
    :cond_2
    move-object v7, v1

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 54
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string v9, "the empty byte string is not a supported option"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 60
    :cond_3
    const/4 v7, 0x0

    move v3, v7

    :goto_3
    move v7, v3

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 61
    move-object v7, v1

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    move-object v4, v7

    .line 62
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    :goto_4
    move v7, v5

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 63
    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    move-object v6, v7

    .line 64
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 60
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 65
    :cond_5
    move-object v7, v6

    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Lokio/ByteString;->size()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 66
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "duplicate option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 68
    :cond_6
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v8, v2

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_7

    .line 69
    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 70
    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 74
    :goto_5
    goto :goto_4

    .line 72
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 77
    :cond_8
    new-instance v7, Lokio/Buffer;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    move-object v3, v7

    .line 78
    const-wide/16 v7, 0x0

    move-object v9, v3

    const/4 v10, 0x0

    move-object v11, v1

    const/4 v12, 0x0

    move-object v13, v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move-object v14, v2

    invoke-static/range {v7 .. v14}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 80
    move-object v7, v3

    invoke-static {v7}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v7

    new-array v7, v7, [I

    move-object v4, v7

    .line 81
    const/4 v7, 0x0

    move v5, v7

    :goto_6
    move v7, v5

    move-object v8, v4

    array-length v8, v8

    if-ge v7, v8, :cond_9

    .line 82
    move-object v7, v4

    move v8, v5

    move-object v9, v3

    invoke-virtual {v9}, Lokio/Buffer;->readInt()I

    move-result v9

    aput v9, v7, v8

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 84
    :cond_9
    move-object v7, v3

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-nez v7, :cond_a

    .line 85
    new-instance v7, Ljava/lang/AssertionError;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 88
    :cond_a
    new-instance v7, Lokio/Options;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    invoke-virtual {v9}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lokio/ByteString;

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    move-object v0, v7

    goto/16 :goto_0

    .line 38
    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(I)Lokio/ByteString;
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lokio/Options;->byteStrings:[Lokio/ByteString;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v1, v1

    move v0, v1

    return v0
.end method
