.class final Lcom/mintegral/msdk/mtgnative/e/a$2;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "NativeReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 173
    const-string v0, "NativeReport"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 168
    const-string v0, "NativeReport"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
