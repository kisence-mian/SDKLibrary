.class final Lcom/qq/e/comm/util/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/qq/e/comm/util/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/qq/e/comm/util/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qq/e/comm/util/a;-><init>(B)V

    sput-object v0, Lcom/qq/e/comm/util/a$a;->a:Lcom/qq/e/comm/util/a;

    return-void
.end method
