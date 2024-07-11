.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 698
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$30;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    .line 732
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 720
    :pswitch_15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/o;-><init>()V

    .line 721
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c()V

    .line 722
    :goto_1d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 723
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    goto :goto_1d

    .line 725
    :cond_2f
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d()V

    .line 726
    return-object v0

    .line 712
    :pswitch_33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/i;-><init>()V

    .line 713
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 714
    :goto_3b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 715
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    goto :goto_3b

    .line 717
    :cond_49
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    .line 718
    return-object v0

    .line 709
    :pswitch_4d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 710
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    return-object p1

    .line 702
    :pswitch_53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 707
    :pswitch_5d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 704
    :pswitch_6b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object p1

    .line 705
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/q;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/q;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_5d
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_15
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    if-eqz p2, :cond_b3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_b3

    .line 739
    :cond_a
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->i()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 740
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->m()Lcom/bytedance/sdk/openadsdk/preload/a/q;

    move-result-object p2

    .line 741
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 742
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->a()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/Number;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    goto :goto_37

    .line 743
    :cond_22
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->n()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 744
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Z)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    goto :goto_37

    .line 746
    :cond_30
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/q;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 749
    :goto_37
    goto/16 :goto_b6

    :cond_39
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->g()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 750
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 751
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->l()Lcom/bytedance/sdk/openadsdk/preload/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/i;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    .line 752
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 753
    goto :goto_4a

    .line 754
    :cond_5a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    goto :goto_b6

    .line 756
    :cond_5e
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 757
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 758
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->k()Lcom/bytedance/sdk/openadsdk/preload/a/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/o;->n()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_73
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 760
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    .line 761
    goto :goto_73

    .line 762
    :cond_92
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    goto :goto_b6

    .line 765
    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_b3
    :goto_b3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 767
    :goto_b6
    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    check-cast p2, Lcom/bytedance/sdk/openadsdk/preload/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V

    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$22;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object p1

    return-object p1
.end method
