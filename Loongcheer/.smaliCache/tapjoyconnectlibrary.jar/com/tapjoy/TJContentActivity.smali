.class public Lcom/tapjoy/TJContentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJContentActivity$AbstractContentProducer;,
        Lcom/tapjoy/TJContentActivity$ContentProducer;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tapjoy/TJContentActivity$ContentProducer;


# instance fields
.field private b:Lcom/tapjoy/TJContentActivity$ContentProducer;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 6

    .line 100
    const-string v0, "com.tapjoy.internal.content.producer.id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 103
    return v1

    .line 106
    :cond_a
    const-class v2, Lcom/tapjoy/TJContentActivity;

    monitor-enter v2

    .line 107
    :try_start_d
    sget-object v3, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v3, :cond_3d

    sget-object v3, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-static {v3}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 108
    sget-object v0, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    iput-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    .line 114
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_3f

    .line 116
    const-string v0, "com.tapjoy.internal.content.fullscreen"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 117
    invoke-virtual {p0}, Lcom/tapjoy/TJContentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 121
    :cond_36
    iget-object p1, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {p1, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->show(Landroid/app/Activity;)V

    .line 122
    const/4 p1, 0x1

    return p1

    .line 112
    :cond_3d
    :try_start_3d
    monitor-exit v2

    return v1

    .line 114
    :catchall_3f
    move-exception p1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public static start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "producer"    # Lcom/tapjoy/TJContentActivity$ContentProducer;
    .param p2, "fullscreen"    # Z

    .line 42
    const-class v0, Lcom/tapjoy/TJContentActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const/high16 v2, 0x10810000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    const-string v2, "com.tapjoy.internal.content.producer.id"

    invoke-static {p1}, Lcom/tapjoy/TJContentActivity;->toIdentityString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v2, "com.tapjoy.internal.content.fullscreen"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    monitor-enter v0

    .line 50
    :try_start_1b
    sput-object p1, Lcom/tapjoy/TJContentActivity;->a:Lcom/tapjoy/TJContentActivity$ContentProducer;

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static toIdentityString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 127
    if-nez p0, :cond_5

    .line 128
    const-string v0, "null"

    return-object v0

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tapjoy/TJContentActivity$ContentProducer;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJContentActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/tapjoy/TJContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/TJContentActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 64
    invoke-virtual {p0}, Lcom/tapjoy/TJContentActivity;->finish()V

    .line 66
    :cond_14
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/tapjoy/TJContentActivity;->b:Lcom/tapjoy/TJContentActivity$ContentProducer;

    if-eqz v0, :cond_7

    .line 71
    invoke-interface {v0, p0}, Lcom/tapjoy/TJContentActivity$ContentProducer;->dismiss(Landroid/app/Activity;)V

    .line 73
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 79
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 2016
    iget-boolean v0, v0, Lcom/tapjoy/internal/hb;->m:Z

    .line 79
    if-eqz v0, :cond_16

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    .line 81
    nop

    .line 2183
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hb;->a(Landroid/app/Activity;)V

    .line 83
    :cond_16
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 87
    iget-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJContentActivity;->c:Z

    .line 89
    nop

    .line 2201
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/hb;->b(Landroid/app/Activity;)V

    .line 91
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 92
    return-void
.end method
