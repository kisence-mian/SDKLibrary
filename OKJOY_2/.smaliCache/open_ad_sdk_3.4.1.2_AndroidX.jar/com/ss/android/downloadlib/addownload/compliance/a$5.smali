.class Lcom/ss/android/downloadlib/addownload/compliance/a$5;
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

    .line 121
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$5;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 124
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$5;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->dismiss()V

    .line 125
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a$5;->a:Lcom/ss/android/downloadlib/addownload/compliance/a;

    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->a(Lcom/ss/android/downloadlib/addownload/compliance/a;)J

    move-result-wide v0

    const-string p1, "lp_app_dialog_click_giveup"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->a(Ljava/lang/String;J)V

    .line 126
    return-void
.end method
