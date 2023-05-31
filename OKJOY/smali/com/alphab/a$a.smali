.class public final Lcom/alphab/a$a;
.super Ljava/lang/Object;
.source "AlphaCommonConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alphab/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "aEqMQ3ckisLAfcxK7En575xOayJIYsT="

    invoke-static {v0}, Lcom/alphab/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/a$a;->a:Ljava/lang/String;

    .line 32
    const-string v0, "aELKr0xI7ULIYeJAYeN6aEbPQEx6FAVVNPBVJPHmNZJXJZN="

    invoke-static {v0}, Lcom/alphab/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alphab/a$a;->b:Ljava/lang/String;

    return-void
.end method
