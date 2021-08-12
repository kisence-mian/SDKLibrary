.class Lcom/ss/android/downloadlib/addownload/compliance/b$1;
.super Ljava/lang/Object;
.source "AdLpComplianceManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/h/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Lcom/ss/android/downloadlib/addownload/b/e;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/downloadlib/h/c$a<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/compliance/b;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/b;JJ)V
    .registers 6

    .line 161
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->c:Lcom/ss/android/downloadlib/addownload/compliance/b;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->a:J

    iput-wide p4, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Ljava/lang/Object;
    .registers 6

    .line 164
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 165
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->c:Lcom/ss/android/downloadlib/addownload/compliance/b;

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->a:J

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/b;->a(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(J)V

    .line 166
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->b:J

    const-string p1, "lp_app_dialog_try_show"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->b(Ljava/lang/String;J)V

    goto :goto_22

    .line 168
    :cond_1b
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->c:Lcom/ss/android/downloadlib/addownload/compliance/b;

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/b;->b(J)V

    .line 170
    :goto_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/b$1;->a(Ljava/lang/Boolean;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
