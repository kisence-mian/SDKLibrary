.class public final Lcom/qq/e/comm/managers/setting/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/managers/setting/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/qq/e/comm/managers/setting/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/managers/setting/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/managers/setting/c$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/comm/managers/setting/c$b;->b:Lcom/qq/e/comm/managers/setting/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/managers/setting/b;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/qq/e/comm/managers/setting/c$b;-><init>(Ljava/lang/String;Lcom/qq/e/comm/managers/setting/b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/c$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/qq/e/comm/managers/setting/b;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/c$b;->b:Lcom/qq/e/comm/managers/setting/b;

    return-object v0
.end method
