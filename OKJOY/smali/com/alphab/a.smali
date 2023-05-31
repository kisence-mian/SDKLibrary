.class public final Lcom/alphab/a;
.super Ljava/lang/Object;
.source "AlphaCommonConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alphab/a$a;,
        Lcom/alphab/a$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "LdxThdi1WBK\\/WgfPhbxQYkeXHBPwHZKAJ7eXHM=="

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/a;->a:Ljava/lang/String;

    .line 12
    const-string v0, "LdxThdi1WBK\\/WgfPhbxQYkeXHBPwHZKsYFh="

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/a;->b:Ljava/lang/String;

    .line 14
    const-string v0, "decode error"

    sput-object v0, Lcom/alphab/a;->c:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alphab/a;->d:Z

    return-void
.end method
