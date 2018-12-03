.class public LUtil;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compressJpegFromYUV420p(Liil;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)I
    .locals 28

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const-string/jumbo v3, "Output buffer must be direct"

    invoke-static {v2, v3}, Liya;->b(ZLjava/lang/Object;)V

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    const/16 v27, 0x1

    :goto_0
    const-string/jumbo v25, "Invalid crop rectangle: "

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move/from16 v0, v27

    invoke-static {v0, v2}, Liya;->b(ZLjava/lang/Object;)V

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    const/16 v27, 0x1

    :goto_2
    const-string/jumbo v25, "Invalid crop rectangle: "

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move/from16 v0, v27

    invoke-static {v0, v2}, Liya;->b(ZLjava/lang/Object;)V

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface/range {p0 .. p0}, Liil;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface/range {p0 .. p0}, Liil;->f()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface/range {p0 .. p0}, Liil;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface/range {p0 .. p0}, Liil;->c()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-interface/range {p0 .. p0}, Liil;->l_()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Only ImageFormat.YUV_420_888 is supported, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Liil;->l_()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Liya;->b(ZLjava/lang/Object;)V

    invoke-interface/range {p0 .. p0}, Liil;->d()Ljava/util/List;

    move-result-object v21

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Liim;

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Liim;

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Liim;

    invoke-interface/range {v22 .. v22}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    invoke-static {v2}, Liya;->b(Z)V

    invoke-interface/range {v22 .. v22}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    invoke-static {v2}, Liya;->b(Z)V

    invoke-interface/range {v22 .. v22}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    invoke-static {v2}, Liya;->b(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {p0 .. p0}, Liil;->f()I

    move-result v2

    invoke-interface/range {p0 .. p0}, Liil;->c()I

    move-result v3

    invoke-interface/range {v22 .. v22}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {v22 .. v22}, Liim;->b()I

    move-result v5

    invoke-interface/range {v22 .. v22}, Liim;->a()I

    move-result v6

    invoke-interface/range {v23 .. v23}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface/range {v23 .. v23}, Liim;->b()I

    move-result v8

    invoke-interface/range {v23 .. v23}, Liim;->a()I

    move-result v9

    invoke-interface/range {v24 .. v24}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface/range {v24 .. v24}, Liim;->b()I

    move-result v11

    invoke-interface/range {v24 .. v24}, Liim;->a()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    move-object/from16 v13, p1

    move/from16 v15, p2

    invoke-static/range {v2 .. v19}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420pNative(IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IIIIII)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return v20

    :cond_0
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_3
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method public static comressToJpeg(Liil;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)I
    .locals 12

    invoke-interface {p0}, Liil;->f()I

    move-result v2

    const/16 v3, 0xa20

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Liil;->c()I

    move-result v2

    const/16 v3, 0x798

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Liil;->d()Ljava/util/List;

    move-result-object v9

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liim;

    invoke-interface {v2}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liim;

    invoke-interface {v2}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liim;

    invoke-interface {v2}, Liim;->c()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {p0, v2}, Lela;->a(Liil;[B)[B

    move-result-object v1

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-interface {p0}, Liil;->f()I

    move-result v3

    invoke-interface {p0}, Liil;->c()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    invoke-virtual {v0, p3, p2, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    array-length v2, v11

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v2, v11

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p1, p2, p3}, LUtil;->compressJpegFromYUV420p(Liil;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)I

    move-result v2

    goto :goto_0
.end method

.method public static deleteParentDir(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
