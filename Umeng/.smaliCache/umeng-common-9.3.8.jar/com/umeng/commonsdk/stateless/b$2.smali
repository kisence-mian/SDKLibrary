.class Lcom/umeng/commonsdk/stateless/b$2;
.super Landroid/os/Handler;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/stateless/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/stateless/b;Landroid/os/Looper;)V
    .registers 3

    .line 146
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b$2;->a:Lcom/umeng/commonsdk/stateless/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    sparse-switch p1, :sswitch_data_16

    goto :goto_15

    .line 159
    :sswitch_6
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->h()V

    .line 162
    :sswitch_9
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->i()V

    .line 164
    goto :goto_15

    .line 155
    :sswitch_d
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->g()V

    .line 157
    goto :goto_15

    .line 151
    :sswitch_11
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->f()V

    .line 153
    nop

    .line 169
    :goto_15
    return-void

    :sswitch_data_16
    .sparse-switch
        0x111 -> :sswitch_11
        0x112 -> :sswitch_d
        0x113 -> :sswitch_6
        0x200 -> :sswitch_9
    .end sparse-switch
.end method
