.class Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Lcom/ss/android/a/a/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/e;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    .line 153
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    .line 159
    return-void
.end method
