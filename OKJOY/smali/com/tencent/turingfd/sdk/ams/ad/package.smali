.class public Lcom/tencent/turingfd/sdk/ams/ad/package;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mc:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/package;->mc:Landroid/os/Handler;

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-string v0, "turingfd_conf_105548_adMini"

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    .line 14
    :cond_b
    :goto_b
    return-object v0

    .line 2
    :cond_c
    const-string v2, ""

    .line 3
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 5
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 6
    new-array v3, v2, [B

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    :goto_29
    if-ge v0, v2, :cond_4a

    mul-int/lit8 v1, v0, 0x2

    .line 8
    aget-char v5, v4, v1
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_2f} :catch_5a

    const-string v6, "0123456789ABCDEF"

    .line 9
    :try_start_31
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-byte v5, v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v1, v1, 0x1

    .line 10
    aget-char v1, v4, v1
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3c} :catch_5a

    const-string v6, "0123456789ABCDEF"

    .line 11
    :try_start_3e
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    int-to-byte v1, v1

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .line 12
    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 13
    :cond_4a
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c()[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B[B)[B

    move-result-object v1

    .line 14
    new-instance v0, Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_54} :catch_5a

    const-string v2, "UTF-8"

    :try_start_56
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_b

    :catch_5a
    move-exception v0

    const-string v0, ""

    goto :goto_b
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Lcom/tencent/turingfd/sdk/ams/ad/import;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/tencent/turingfd/sdk/ams/ad/import",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/import;

    invoke-direct {v1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/import;-><init>(I)V

    const-string v0, "402"

    .line 11
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 13
    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_2c

    aget-object v4, v2, v0

    .line 14
    :try_start_1a
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_2d

    move-result-wide v4

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/import;->offer(Ljava/lang/Object;)V

    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2c
    return-object v1

    :catch_2d
    move-exception v4

    goto :goto_29
.end method

.method public a(Landroid/content/Context;IJ)V
    .registers 8

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "202"

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "204"

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/import;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/turingfd/sdk/ams/ad/import",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 3
    :goto_6
    invoke-virtual {p2}, Lcom/tencent/turingfd/sdk/ams/ad/import;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 4
    iget-object v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/import;->Lb:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2}, Lcom/tencent/turingfd/sdk/ams/ad/import;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_22

    const-string v2, "_"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 8
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "402"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, p1, v0, p4}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "turingfd_conf_105548_adMini"

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_a

    .line 23
    :cond_9
    :goto_9
    return-void

    .line 18
    :cond_a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 19
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/for;->c()[B

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/for;->b([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/for;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_3d} :catch_3e

    goto :goto_18

    :catch_3e
    move-exception v0

    goto :goto_18

    .line 23
    :cond_40
    :try_start_40
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_9

    :catch_44
    move-exception v0

    goto :goto_9
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    if-eqz p3, :cond_6

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 31
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/package;->mc:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/finally;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/finally;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/package;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)J
    .registers 5

    .prologue
    .line 21
    invoke-static {p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_d

    move-result-wide v0

    :goto_c
    return-wide v0

    :catch_d
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method public b(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "201"

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/static;)V
    .registers 7

    .prologue
    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Qb:Ljava/lang/String;

    const-string v2, "101"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-wide v2, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Rb:J

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "102"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Ub:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 9
    iget-object v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Ub:Ljava/lang/String;

    const-string v2, "104"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_35
    iget-object v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Vb:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 13
    iget-object v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Vb:Ljava/lang/String;

    const-string v2, "105"

    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_44
    iget-object v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Wb:Ljava/lang/String;

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 17
    iget-object v1, p2, Lcom/tencent/turingfd/sdk/ams/ad/static;->Wb:Ljava/lang/String;

    const-string v2, "106"

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/util/Map;Z)V

    return-void
.end method

.method public c(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "203"

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "403"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/content/Context;J)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "107"

    invoke-virtual {p0, p1, v1, v0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "108"

    invoke-virtual {p0, p1, v1, v0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const-string v0, "404"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Landroid/content/Context;J)V
    .registers 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a

    move-wide p2, v0

    .line 1
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "401"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Landroid/content/Context;J)V
    .registers 8

    .prologue
    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "109"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/package;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public n(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    const-string v0, "201"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    const-string v0, "203"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/content/Context;)J
    .registers 4

    .prologue
    const-string v0, "401"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_f

    move-result-wide v0

    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public q(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const-string v1, "403"

    .line 1
    invoke-static {p1, v1}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :try_start_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3
    :goto_d
    return v0

    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_15} :catch_17

    move-result v0

    goto :goto_d

    :catch_17
    move-exception v1

    goto :goto_d
.end method

.method public r(Landroid/content/Context;)J
    .registers 4

    .prologue
    const-string v0, "107"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_f

    move-result-wide v0

    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public s(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    const-string v0, "301"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    const-string v0, "404"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    const-string v0, "202"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Landroid/content/Context;)J
    .registers 4

    .prologue
    const-string v0, "109"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_f

    move-result-wide v0

    :goto_e
    return-wide v0

    :catch_f
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public w(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/static;
    .registers 9

    .prologue
    const-string v0, "101"

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/static;->c(I)Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    .line 14
    :goto_11
    return-object v0

    .line 3
    :cond_12
    const-wide/16 v0, 0x0

    const-string v3, "102"

    .line 4
    :try_start_16
    invoke-static {p1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_48

    move-result-wide v0

    :goto_22
    const-string v3, "104"

    .line 5
    invoke-static {p1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "105"

    .line 6
    invoke-static {p1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "106"

    .line 7
    invoke-static {p1, v5}, Lcom/tencent/turingfd/sdk/ams/ad/package;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 8
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/static;->create(I)Lcom/tencent/turingfd/sdk/ams/ad/static$do;

    move-result-object v6

    .line 9
    iput-wide v0, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Rb:J

    .line 10
    iput-object v2, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Qb:Ljava/lang/String;

    .line 11
    iput-object v3, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Ub:Ljava/lang/String;

    .line 12
    iput-object v4, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Vb:Ljava/lang/String;

    .line 13
    iput-object v5, v6, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->Wb:Ljava/lang/String;

    .line 14
    invoke-virtual {v6}, Lcom/tencent/turingfd/sdk/ams/ad/static$do;->build()Lcom/tencent/turingfd/sdk/ams/ad/static;

    move-result-object v0

    goto :goto_11

    .line 4
    :catch_48
    move-exception v3

    goto :goto_22
.end method
