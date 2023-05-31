.class public final Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
.super Lcom/tds/protobuf/GeneratedMessageLite$Builder;
.source "LogBean.java"

# interfaces
.implements Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/LogBean$Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/tds/common/tracker/entities/LogBean$Log;",
        "Lcom/tds/common/tracker/entities/LogBean$Log$Builder;",
        ">;",
        "Lcom/tds/common/tracker/entities/LogBean$LogOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 734
    # getter for: Lcom/tds/common/tracker/entities/LogBean$Log;->DEFAULT_INSTANCE:Lcom/tds/common/tracker/entities/LogBean$Log;
    invoke-static {}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$800()Lcom/tds/common/tracker/entities/LogBean$Log;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/tds/protobuf/GeneratedMessageLite;)V

    .line 735
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/tracker/entities/LogBean$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/tracker/entities/LogBean$1;

    .line 727
    invoke-direct {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllContents(Ljava/lang/Iterable;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;)",
            "Lcom/tds/common/tracker/entities/LogBean$Log$Builder;"
        }
    .end annotation

    .line 849
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/tds/common/tracker/entities/LogBean$LogContent;>;"
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 850
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->addAllContents(Ljava/lang/Iterable;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1700(Lcom/tds/common/tracker/entities/LogBean$Log;Ljava/lang/Iterable;)V

    .line 851
    return-object p0
.end method

.method public addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 840
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 841
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1600(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V

    .line 842
    return-object p0
.end method

.method public addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 822
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 823
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1400(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent;)V

    .line 824
    return-object p0
.end method

.method public addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 3
    .param p1, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 831
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 832
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1500(Lcom/tds/common/tracker/entities/LogBean$Log;Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V

    .line 833
    return-object p0
.end method

.method public addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 3
    .param p1, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 813
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 814
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->addContents(Lcom/tds/common/tracker/entities/LogBean$LogContent;)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1300(Lcom/tds/common/tracker/entities/LogBean$Log;Lcom/tds/common/tracker/entities/LogBean$LogContent;)V

    .line 815
    return-object p0
.end method

.method public clearContents()Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 2

    .line 857
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 858
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->clearContents()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1800(Lcom/tds/common/tracker/entities/LogBean$Log;)V

    .line 859
    return-object p0
.end method

.method public clearTime()Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 2

    .line 768
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 769
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->clearTime()V
    invoke-static {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1000(Lcom/tds/common/tracker/entities/LogBean$Log;)V

    .line 770
    return-object p0
.end method

.method public getContents(I)Lcom/tds/common/tracker/entities/LogBean$LogContent;
    .registers 3
    .param p1, "index"    # I

    .line 789
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-virtual {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->getContents(I)Lcom/tds/common/tracker/entities/LogBean$LogContent;

    move-result-object v0

    return-object v0
.end method

.method public getContentsCount()I
    .registers 2

    .line 784
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->getContentsCount()I

    move-result v0

    return v0
.end method

.method public getContentsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/LogBean$LogContent;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    .line 778
    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->getContentsList()Ljava/util/List;

    move-result-object v0

    .line 777
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTime()I
    .registers 2

    .line 746
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    invoke-virtual {v0}, Lcom/tds/common/tracker/entities/LogBean$Log;->getTime()I

    move-result v0

    return v0
.end method

.method public removeContents(I)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 3
    .param p1, "index"    # I

    .line 865
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 866
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->removeContents(I)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1900(Lcom/tds/common/tracker/entities/LogBean$Log;I)V

    .line 867
    return-object p0
.end method

.method public setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/tds/common/tracker/entities/LogBean$LogContent$Builder;

    .line 805
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1200(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent$Builder;)V

    .line 807
    return-object p0
.end method

.method public setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/tds/common/tracker/entities/LogBean$LogContent;

    .line 796
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 797
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->setContents(ILcom/tds/common/tracker/entities/LogBean$LogContent;)V
    invoke-static {v0, p1, p2}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$1100(Lcom/tds/common/tracker/entities/LogBean$Log;ILcom/tds/common/tracker/entities/LogBean$LogContent;)V

    .line 798
    return-object p0
.end method

.method public setTime(I)Lcom/tds/common/tracker/entities/LogBean$Log$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 756
    invoke-virtual {p0}, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->copyOnWrite()V

    .line 757
    iget-object v0, p0, Lcom/tds/common/tracker/entities/LogBean$Log$Builder;->instance:Lcom/tds/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/tds/common/tracker/entities/LogBean$Log;

    # invokes: Lcom/tds/common/tracker/entities/LogBean$Log;->setTime(I)V
    invoke-static {v0, p1}, Lcom/tds/common/tracker/entities/LogBean$Log;->access$900(Lcom/tds/common/tracker/entities/LogBean$Log;I)V

    .line 758
    return-object p0
.end method
