.class public final Lcom/huawei/android/hms/pps/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/android/hms/pps/a/c;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/android/hms/pps/a/b;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final native asBinder()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public final native d()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public final native e()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
