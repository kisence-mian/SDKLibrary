.class public Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;
.super Lcom/tds/protobuf/AbstractParser;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DefaultInstanceBasedParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tds/protobuf/GeneratedMessageLite<",
        "TT;*>;>",
        "Lcom/tds/protobuf/AbstractParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private defaultInstance:Lcom/tds/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/protobuf/GeneratedMessageLite;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1333
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    .local p1, "defaultInstance":Lcom/tds/protobuf/GeneratedMessageLite;, "TT;"
    invoke-direct {p0}, Lcom/tds/protobuf/AbstractParser;-><init>()V

    .line 1334
    iput-object p1, p0, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/tds/protobuf/GeneratedMessageLite;

    .line 1335
    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;
    .registers 4
    .param p1, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/tds/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/CodedInputStream;",
            "Lcom/tds/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1340
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    iget-object v0, p0, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/tds/protobuf/GeneratedMessageLite;

    invoke-static {v0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/tds/protobuf/GeneratedMessageLite;Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1328
    .local p0, "this":Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;, "Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->parsePartialFrom(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/ExtensionRegistryLite;)Lcom/tds/protobuf/GeneratedMessageLite;

    move-result-object p1

    return-object p1
.end method
