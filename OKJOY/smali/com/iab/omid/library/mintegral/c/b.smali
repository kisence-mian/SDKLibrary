.class public Lcom/iab/omid/library/mintegral/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/mintegral/c/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/mintegral/c/c;

    new-instance v1, Lcom/iab/omid/library/mintegral/c/d;

    invoke-direct {v1}, Lcom/iab/omid/library/mintegral/c/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/iab/omid/library/mintegral/c/c;-><init>(Lcom/iab/omid/library/mintegral/c/a;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/c/b;->a:Lcom/iab/omid/library/mintegral/c/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/iab/omid/library/mintegral/c/a;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/c/b;->a:Lcom/iab/omid/library/mintegral/c/c;

    return-object v0
.end method
