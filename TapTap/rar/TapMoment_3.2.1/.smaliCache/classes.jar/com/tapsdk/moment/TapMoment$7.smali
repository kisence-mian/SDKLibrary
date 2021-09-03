.class final Lcom/tapsdk/moment/TapMoment$7;
.super Ljava/lang/Object;
.source "TapMoment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/TapMoment;->closeMoment(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alert:Lcom/tapsdk/moment/view/Alert;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/Alert;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/tapsdk/moment/TapMoment$7;->val$alert:Lcom/tapsdk/moment/view/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 469
    iget-object v0, p0, Lcom/tapsdk/moment/TapMoment$7;->val$alert:Lcom/tapsdk/moment/view/Alert;

    # getter for: Lcom/tapsdk/moment/TapMoment;->activityWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tapsdk/moment/TapMoment;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/tapsdk/moment/view/Alert;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapsdk/moment/view/Alert;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 470
    return-void
.end method
