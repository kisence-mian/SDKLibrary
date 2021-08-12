.class Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$1;
.super Ljava/lang/Object;
.source "AppDetailInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$1;->a:Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 78
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$1;->a:Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->a(Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;)J

    move-result-wide v0

    const-string p1, "lp_app_detail_click_close"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;J)V

    .line 79
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity$1;->a:Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/compliance/AppDetailInfoActivity;->finish()V

    .line 80
    return-void
.end method
