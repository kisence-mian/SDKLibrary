.class public Lcom/meizu/flyme/openidsdk/a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
