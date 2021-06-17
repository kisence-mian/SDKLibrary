.class public final Lcom/efs/sdk/base/a/h/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "efs-base"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/efs/sdk/base/a/h/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 28
    return-void
.end method
