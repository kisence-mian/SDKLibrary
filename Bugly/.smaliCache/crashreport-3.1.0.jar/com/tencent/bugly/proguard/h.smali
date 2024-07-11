.class public final Lcom/tencent/bugly/proguard/h;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/h;->b:I

    .line 28
    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    .line 30
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .line 309
    const-string v0, "null\n"

    if-nez p1, :cond_b

    .line 310
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 311
    :cond_b
    instance-of v1, p1, Ljava/lang/Byte;

    const/16 v2, 0xa

    if-eqz v1, :cond_25

    .line 312
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 313
    :cond_25
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_44

    .line 314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_39

    const/16 p1, 0x54

    goto :goto_3b

    :cond_39
    const/16 p1, 0x46

    :goto_3b
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 315
    :cond_44
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_5c

    .line 316
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 317
    :cond_5c
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_74

    .line 318
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 319
    :cond_74
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_8c

    .line 320
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 321
    :cond_8c
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_a4

    .line 322
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 323
    :cond_a4
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_bc

    .line 324
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 325
    :cond_bc
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_c7

    .line 326
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_2db

    .line 327
    :cond_c7
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_d2

    .line 328
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_2db

    .line 329
    :cond_d2
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_ef

    .line 330
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_e6

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_e6
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_2db

    .line 331
    :cond_ef
    instance-of v1, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v1, :cond_fa

    .line 332
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_2db

    .line 333
    :cond_fa
    instance-of v1, p1, [B

    if-eqz v1, :cond_105

    .line 334
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_2db

    .line 335
    :cond_105
    instance-of v1, p1, [Z

    if-eqz v1, :cond_110

    .line 336
    check-cast p1, [Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    goto/16 :goto_2db

    .line 337
    :cond_110
    instance-of v1, p1, [S

    const/16 v3, 0x5d

    const-string v4, ", []\n"

    const/4 v5, 0x0

    const-string v6, ", [\n"

    const/4 v7, 0x0

    if-eqz v1, :cond_170

    .line 338
    check-cast p1, [S

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_12a

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_12a
    array-length p2, p1

    if-nez p2, :cond_139

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_139
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_14f
    if-ge v5, v0, :cond_162

    aget-short v1, p1, v5

    invoke-direct {p2, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_14f

    :cond_162
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 339
    :cond_170
    instance-of v1, p1, [I

    if-eqz v1, :cond_1c8

    .line 340
    check-cast p1, [I

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_182

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_182
    array-length p2, p1

    if-nez p2, :cond_191

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_191
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_1a7
    if-ge v5, v0, :cond_1ba

    aget v1, p1, v5

    invoke-direct {p2, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a7

    :cond_1ba
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 341
    :cond_1c8
    instance-of v1, p1, [J

    if-eqz v1, :cond_220

    .line 342
    check-cast p1, [J

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1da

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_1da
    array-length p2, p1

    if-nez p2, :cond_1e9

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_1e9
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_1ff
    if-ge v5, v0, :cond_212

    aget-wide v8, p1, v5

    invoke-direct {p2, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ff

    :cond_212
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    .line 343
    :cond_220
    instance-of v1, p1, [F

    if-eqz v1, :cond_277

    .line 344
    check-cast p1, [F

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_232

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_232
    array-length p2, p1

    if-nez p2, :cond_241

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2db

    :cond_241
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_257
    if-ge v5, v0, :cond_26a

    aget v1, p1, v5

    invoke-direct {p2, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_257

    :cond_26a
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2db

    .line 345
    :cond_277
    instance-of v1, p1, [D

    if-eqz v1, :cond_2cc

    .line 346
    check-cast p1, [D

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    if-nez p1, :cond_288

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2db

    :cond_288
    array-length p2, p1

    if-nez p2, :cond_296

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2db

    :cond_296
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v0, p1

    :goto_2ac
    if-ge v5, v0, :cond_2bf

    aget-wide v8, p1, v5

    invoke-direct {p2, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2ac

    :cond_2bf
    invoke-direct {p0, v7}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2db

    .line 347
    :cond_2cc
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 348
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 352
    :goto_2db
    return-object p0

    .line 350
    :cond_2dc
    new-instance p1, Lcom/tencent/bugly/proguard/b;

    const-string p2, "write object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 265
    if-nez p1, :cond_d

    .line 266
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    return-object p0

    .line 269
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1d

    .line 270
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", []\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    return-object p0

    .line 273
    :cond_1d
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 275
    array-length v0, p1

    const/4 v1, 0x0

    :goto_36
    const/4 v2, 0x0

    if-ge v1, v0, :cond_41

    aget-object v3, p1, v1

    .line 276
    invoke-direct {p2, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 277
    :cond_41
    const/16 p1, 0x5d

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .line 20
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    if-ge v0, v1, :cond_f

    .line 21
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_f
    if-eqz p1, :cond_1c

    .line 23
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1c
    return-void
.end method


# virtual methods
.method public final a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 3

    .line 46
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    return-object p0
.end method

.method public final a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 3

    .line 67
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    return-object p0
.end method

.method public final a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 4

    .line 74
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 75
    iget-object p3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    return-object p0
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 5

    .line 357
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    if-nez p1, :cond_20

    .line 359
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 361
    :cond_20
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/StringBuilder;I)V

    .line 364
    :goto_29
    const/16 p1, 0x7d

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 3

    .line 95
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 96
    if-nez p1, :cond_d

    .line 97
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 99
    :cond_d
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :goto_18
    return-object p0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/bugly/proguard/h;"
        }
    .end annotation

    .line 240
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 241
    if-nez p1, :cond_d

    .line 242
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    return-object p0

    .line 245
    :cond_d
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 246
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", {}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    return-object p0

    .line 249
    :cond_23
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", {\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 251
    new-instance v0, Lcom/tencent/bugly/proguard/h;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 252
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v1, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    const/16 v4, 0x28

    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 255
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/bugly/proguard/h;

    .line 256
    const/16 v1, 0x29

    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 258
    :cond_8a
    const/16 p1, 0x7d

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    return-object p0
.end method

.method public final a(SLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 3

    .line 60
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    return-object p0
.end method

.method public final a(ZLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 3

    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    const/16 p1, 0x54

    goto :goto_c

    :cond_a
    const/16 p1, 0x46

    :goto_c
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    return-object p0
.end method

.method public final a([BLjava/lang/String;)Lcom/tencent/bugly/proguard/h;
    .registers 8

    .line 107
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    .line 108
    if-nez p1, :cond_d

    .line 109
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    const-string p2, "null\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    return-object p0

    .line 112
    :cond_d
    array-length p2, p1

    if-nez p2, :cond_1d

    .line 113
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", []\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    return-object p0

    .line 116
    :cond_1d
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", [\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance p2, Lcom/tencent/bugly/proguard/h;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/bugly/proguard/h;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/tencent/bugly/proguard/h;-><init>(Ljava/lang/StringBuilder;I)V

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_36
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v0, :cond_4c

    aget-byte v4, p1, v1

    .line 119
    invoke-direct {p2, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 120
    :cond_4c
    const/16 p1, 0x5d

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    return-object p0
.end method
