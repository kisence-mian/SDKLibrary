.class final Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$ProtoAdapter_MaterialMeta;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;
    .registers 8

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_16d

    packed-switch v0, :pswitch_data_176

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->creative_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->interaction_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->landing_page(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_duration(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_5f
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_size(Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_6b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->html_snippet(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_77
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->endcard_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto :goto_9

    :pswitch_83
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_90
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->endcard_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_9d
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->deeplink_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_aa
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_src(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_b7
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_size(Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_c4
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_d1
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_de
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->click_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_eb
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->has_companionEndcard(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_f8
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->companion(Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_105
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle(Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_112
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->template_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_11f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_reciprocal_millisecond(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_12c
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->html_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_139
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->enable_collapse_tool_bar(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_146
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->open_market_mode(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_153
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->play_mode(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :pswitch_160
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->sub_interaction_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    goto/16 :goto_9

    :cond_16d
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
        :pswitch_47
        :pswitch_53
        :pswitch_5f
        :pswitch_6b
        :pswitch_77
        :pswitch_83
        :pswitch_90
        :pswitch_9d
        :pswitch_aa
        :pswitch_b7
        :pswitch_c4
        :pswitch_d1
        :pswitch_de
        :pswitch_eb
        :pswitch_f8
        :pswitch_105
        :pswitch_112
        :pswitch_11f
        :pswitch_12c
        :pswitch_139
        :pswitch_146
        :pswitch_153
        :pswitch_160
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$ProtoAdapter_MaterialMeta;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$ProtoAdapter_MaterialMeta;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_snippet:Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_md5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_md5:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->has_companionEndcard:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x16

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x17

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x1a

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$ProtoAdapter_MaterialMeta;->encodedSize(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;

    move-result-object v1

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->video_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    :cond_14
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->image_size:Lcom/sigmob/sdk/base/models/sigdsp/pb/Size;

    :cond_24
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    :cond_34
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/base/models/sigdsp/pb/WebEventHandle;

    :cond_44
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta$ProtoAdapter_MaterialMeta;->redact(Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    return-object v0
.end method
