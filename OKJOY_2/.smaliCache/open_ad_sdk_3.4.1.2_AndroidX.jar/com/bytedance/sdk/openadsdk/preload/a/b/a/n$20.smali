.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$20;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/Calendar;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    .line 604
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 605
    const/4 p1, 0x0

    return-object p1

    .line 607
    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->c()V

    .line 608
    nop

    .line 609
    nop

    .line 610
    nop

    .line 611
    nop

    .line 612
    nop

    .line 613
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 614
    :goto_1c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v0, v1, :cond_68

    .line 615
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m()I

    move-result v1

    .line 617
    const-string v8, "year"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 618
    move v2, v1

    goto :goto_67

    .line 619
    :cond_36
    const-string v8, "month"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 620
    move v3, v1

    goto :goto_67

    .line 621
    :cond_40
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 622
    move v4, v1

    goto :goto_67

    .line 623
    :cond_4a
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 624
    move v5, v1

    goto :goto_67

    .line 625
    :cond_54
    const-string v8, "minute"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 626
    move v6, v1

    goto :goto_67

    .line 627
    :cond_5e
    const-string v8, "second"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 628
    move v7, v1

    .line 630
    :cond_67
    :goto_67
    goto :goto_1c

    .line 631
    :cond_68
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->d()V

    .line 632
    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$20;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    if-nez p2, :cond_6

    .line 638
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 639
    return-void

    .line 641
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 642
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 644
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 645
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 646
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 647
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 648
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 649
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 650
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 651
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 652
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 653
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 654
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->e()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 655
    return-void
.end method

.method public synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$20;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method
