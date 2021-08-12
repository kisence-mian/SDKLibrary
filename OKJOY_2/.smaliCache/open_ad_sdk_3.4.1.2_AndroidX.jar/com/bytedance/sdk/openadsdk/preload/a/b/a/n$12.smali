.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$12;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/BitSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 88
    nop

    .line 89
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 90
    :goto_f
    sget-object v4, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v1, v4, :cond_79

    .line 92
    sget-object v4, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$30;->a:[I

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_7e

    .line 109
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitset value type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :pswitch_38
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 102
    :try_start_3c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_40} :catch_45

    if-eqz v1, :cond_43

    goto :goto_44

    :cond_43
    move v5, v2

    .line 106
    :goto_44
    goto :goto_6d

    .line 103
    :catch_45
    move-exception p1

    .line 104
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :pswitch_5f
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i()Z

    move-result v5

    .line 98
    goto :goto_6d

    .line 94
    :pswitch_64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m()I

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_6c

    :cond_6b
    move v5, v2

    .line 95
    :goto_6c
    nop

    .line 111
    :goto_6d
    if-eqz v5, :cond_72

    .line 112
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 114
    :cond_72
    add-int/lit8 v3, v3, 0x1

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v1

    .line 116
    goto :goto_f

    .line 117
    :cond_79
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    .line 118
    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5f
        :pswitch_38
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$12;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/BitSet;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/BitSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 123
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_15

    .line 124
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 125
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 127
    :cond_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 128
    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$12;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method
