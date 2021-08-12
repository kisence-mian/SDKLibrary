.class Lcom/ss/android/downloadlib/addownload/compliance/a$4;
.super Ljava/lang/Object;
.source "AdLpAppInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/compliance/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$4;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 116
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$4;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->c(Lcom/ss/android/downloadlib/addownload/compliance/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Landroid/app/Activity;)V

    .line 117
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$4;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->c(Lcom/ss/android/downloadlib/addownload/compliance/a;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$4;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->d(Lcom/ss/android/downloadlib/addownload/compliance/a;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/AppPrivacyPolicyActivity;->a(Landroid/app/Activity;J)V

    .line 118
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$4;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->a(Lcom/ss/android/downloadlib/addownload/compliance/a;)J

    move-result-wide v0

    const-string p1, "lp_app_dialog_click_privacy"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;J)V

    .line 119
    return-void
.end method
