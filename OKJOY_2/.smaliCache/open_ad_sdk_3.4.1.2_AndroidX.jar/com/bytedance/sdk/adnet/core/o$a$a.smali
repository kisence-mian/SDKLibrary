.class Lcom/bytedance/sdk/adnet/core/o$a$a;
.super Ljava/lang/Object;
.source "VNetLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/o$a$a;->a:Ljava/lang/String;

    .line 126
    iput-wide p2, p0, Lcom/bytedance/sdk/adnet/core/o$a$a;->b:J

    .line 127
    iput-wide p4, p0, Lcom/bytedance/sdk/adnet/core/o$a$a;->c:J

    .line 128
    return-void
.end method
