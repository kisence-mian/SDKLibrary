.class public final Lcom/qq/e/comm/managers/setting/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/managers/setting/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/qq/e/comm/managers/setting/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/managers/setting/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/managers/setting/c$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/comm/managers/setting/c$a;->b:Lcom/qq/e/comm/managers/setting/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/qq/e/comm/managers/setting/c;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/c$a;->b:Lcom/qq/e/comm/managers/setting/c;

    return-object v0
.end method
