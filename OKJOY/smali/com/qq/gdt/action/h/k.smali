.class public Lcom/qq/gdt/action/h/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x5c

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    :try_start_5
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    move v0, v1

    move v2, v1

    move v4, v1

    :goto_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_72

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_29
    :goto_29
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_19

    :sswitch_2d
    if-eq v4, v7, :cond_32

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    :cond_32
    :goto_32
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_29

    :catch_36
    move-exception v0

    const-string v0, ""

    goto :goto_f

    :cond_3a
    move v0, v1

    goto :goto_32

    :sswitch_3c
    :try_start_3c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v0, :cond_29

    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v6, v2}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/StringBuilder;I)V

    goto :goto_29

    :sswitch_4c
    if-nez v0, :cond_58

    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6, v2}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/StringBuilder;I)V

    :cond_58
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    :sswitch_5c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v4, v7, :cond_29

    if-nez v0, :cond_29

    const/16 v4, 0xa

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6, v2}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/StringBuilder;I)V

    goto :goto_29

    :cond_6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6f} :catch_36

    move-result-object v0

    goto :goto_f

    nop

    :sswitch_data_72
    .sparse-switch
        0x22 -> :sswitch_2d
        0x2c -> :sswitch_5c
        0x5b -> :sswitch_3c
        0x5d -> :sswitch_4c
        0x7b -> :sswitch_3c
        0x7d -> :sswitch_4c
    .end sparse-switch
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_f

    const/16 v1, 0x9

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    return-void
.end method
