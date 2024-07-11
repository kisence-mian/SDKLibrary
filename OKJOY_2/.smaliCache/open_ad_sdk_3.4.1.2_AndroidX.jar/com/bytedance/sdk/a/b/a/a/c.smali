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

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_4a

    goto :goto_48

    .line 92
    :sswitch_9
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->k()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->c()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_32

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->k()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->e()Z

    move-result v0

    if-nez v0, :cond_32

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->k()Lcom/bytedance/sdk/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/d;->d()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 96
    goto :goto_32

    .line 85
    :sswitch_31
    nop

    .line 106
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->k()Lcom/bytedance/sdk/a/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/d;->b()Z

    move-result p0

    if-nez p0, :cond_47

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->f()Lcom/bytedance/sdk/a/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/d;->b()Z

    move-result p0

    if-nez p0, :cond_47

    const/4 v1, 0x1

    :cond_47
    return v1

    .line 102
    :cond_48
    :goto_48
    return v1

    nop

    :sswitch_data_4a
    .sparse-switch
        0xc8 -> :sswitch_31
        0xcb -> :sswitch_31
        0xcc -> :sswitch_31
        0x12c -> :sswitch_31
        0x12d -> :sswitch_31
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_31
        0x194 -> :sswitch_31
        0x195 -> :sswitch_31
        0x19a -> :sswitch_31
        0x19e -> :sswitch_31
        0x1f5 -> :sswitch_31
    .end sparse-switch
.end method
