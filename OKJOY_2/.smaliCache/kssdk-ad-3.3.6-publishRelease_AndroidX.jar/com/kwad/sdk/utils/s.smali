.class public Lcom/kwad/sdk/utils/s;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/database/Cursor;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/util/List;)Z
    .registers 1

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
