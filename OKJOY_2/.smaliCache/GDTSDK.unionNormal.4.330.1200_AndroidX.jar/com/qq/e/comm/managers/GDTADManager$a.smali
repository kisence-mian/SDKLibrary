.class final Lcom/qq/e/comm/managers/GDTADManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/managers/GDTADManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/qq/e/comm/managers/GDTADManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/qq/e/comm/managers/GDTADManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/GDTADManager;-><init>(B)V

    sput-object v0, Lcom/qq/e/comm/managers/GDTADManager$a;->a:Lcom/qq/e/comm/managers/GDTADManager;

    return-void
.end method

.method static synthetic a()Lcom/qq/e/comm/managers/GDTADManager;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager$a;->a:Lcom/qq/e/comm/managers/GDTADManager;

    return-object v0
.end method
