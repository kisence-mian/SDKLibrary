.class public final Lcom/bytedance/sdk/a/b/a/a/c;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/bytedance/sdk/a/b/y;

.field public final b:Lcom/bytedance/sdk/a/b/aa;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/y;Lcom/bytedance/sdk/a/b/aa;)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/a/c;->a:Lcom/bytedance/sdk/a/b/y;

    .line 63
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/a/c;->b:Lcom/bytedance/sdk/a/b/aa;

    .line 64
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/aa;Lcom/bytedance/sdk/a/b/y;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    .line 106
    :cond_8
    :goto_8
    return v0

    .line 92
    :sswitch_9
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/d;->e()Z

    move-result v1

    if-nez v1, :cond_30

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/d;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 106
    :cond_30
    :sswitch_30
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->j()Lcom/bytedance/sdk/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/d;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->f()Lcom/bytedance/sdk/a/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/d;->b()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    .line 72
    :sswitch_data_46
    .sparse-switch
        0xc8 -> :sswitch_30
        0xcb -> :sswitch_30
        0xcc -> :sswitch_30
        0x12c -> :sswitch_30
        0x12d -> :sswitch_30
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_30
        0x194 -> :sswitch_30
        0x195 -> :sswitch_30
        0x19a -> :sswitch_30
        0x19e -> :sswitch_30
        0x1f5 -> :sswitch_30
    .end sparse-switch
.end method
