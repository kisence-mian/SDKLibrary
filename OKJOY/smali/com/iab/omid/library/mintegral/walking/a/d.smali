.class public Lcom/iab/omid/library/mintegral/walking/a/d;
.super Lcom/iab/omid/library/mintegral/walking/a/b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/b;-><init>(Lcom/iab/omid/library/mintegral/walking/a/b$b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/walking/a/d;->d:Lcom/iab/omid/library/mintegral/walking/a/b$b;

    invoke-interface {v0, v1}, Lcom/iab/omid/library/mintegral/walking/a/b$b;->a(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/mintegral/walking/a/d;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
