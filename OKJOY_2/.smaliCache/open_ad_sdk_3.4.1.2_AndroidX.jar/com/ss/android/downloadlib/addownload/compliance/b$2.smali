.class Lcom/ss/android/downloadlib/addownload/compliance/b$2;
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
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
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

    .line 136
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$2;->c:Lcom/ss/android/downloadlib/addownload/compliance/b;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$2;->a:J

    iput-wide p4, p0, Lcom/ss/android/downloadlib/addownload/compliance/b$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->e()Lcom/ss/android/a/a/a/g;

    move-result-object v3

    new-instance v4, Lcom/ss/android/downloadlib/addownload/compliance/b$2$1;

    invoke-direct {v4, p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/b$2$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/b$2;[Z)V

    const-string v5, "GET"

    invoke-interface {v3, v5, p1, v2, v4}, Lcom/ss/android/a/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/a/a/a/p;)V

    .line 159
    aget-boolean p1, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 136
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/b$2;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
