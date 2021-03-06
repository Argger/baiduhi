%% Generated by the Erlang ASN.1 BER-compiler version:1.7
%% Purpose: encoder and decoder to the types in mod PKCS-1

-module('PKCS-1').
-include("PKCS-1.hrl").
-define('RT_BER',asn1rt_ber_bin).
-asn1_info([{vsn,'1.7'},
            {module,'PKCS-1'},
            {options,[{i,[46]}]}]).

-export([encoding_rule/0]).
-export([
'enc_RSAPublicKey'/2,
'enc_RSAPrivateKey'/2,
'enc_Version'/2,
'enc_OtherPrimeInfos'/2,
'enc_OtherPrimeInfo'/2,
'enc_Algorithm'/2,
'enc_AlgorithmNull'/2,
'enc_RSASSA-PSS-params'/2,
'enc_TrailerField'/2,
'enc_DigestInfo'/2,
'enc_DigestInfoNull'/2
]).

-export([
'dec_RSAPublicKey'/2,
'dec_RSAPrivateKey'/2,
'dec_Version'/2,
'dec_OtherPrimeInfos'/2,
'dec_OtherPrimeInfo'/2,
'dec_Algorithm'/2,
'dec_AlgorithmNull'/2,
'dec_RSASSA-PSS-params'/2,
'dec_TrailerField'/2,
'dec_DigestInfo'/2,
'dec_DigestInfoNull'/2
]).

-export([
'dec_RSAPublicKey'/3,
'dec_RSAPrivateKey'/3,
'dec_Version'/3,
'dec_OtherPrimeInfos'/3,
'dec_OtherPrimeInfo'/3,
'dec_Algorithm'/3,
'dec_AlgorithmNull'/3,
'dec_RSASSA-PSS-params'/3,
'dec_TrailerField'/3,
'dec_DigestInfo'/3,
'dec_DigestInfoNull'/3
]).

-export([
'pkcs-1'/0,
'rsaEncryption'/0,
'id-RSAES-OAEP'/0,
'id-pSpecified'/0,
'id-RSASSA-PSS'/0,
'md2WithRSAEncryption'/0,
'md5WithRSAEncryption'/0,
'sha1WithRSAEncryption'/0,
'sha256WithRSAEncryption'/0,
'sha384WithRSAEncryption'/0,
'sha512WithRSAEncryption'/0,
'id-sha1'/0,
'id-md2'/0,
'id-md5'/0,
'id-mgf1'/0
]).

-export([info/0]).


-export([encode/2,decode/2,encode_disp/2,decode_disp/2]).

encoding_rule() ->
   ber.

encode(Type,Data) ->
case catch encode_disp(Type,Data) of
  {'EXIT',{error,Reason}} ->
    {error,Reason};
  {'EXIT',Reason} ->
    {error,{asn1,Reason}};
  {Bytes,_Len} ->
    {ok,wrap_encode(Bytes)};
  Bytes ->
    {ok,wrap_encode(Bytes)}
end.

decode(Type,Data) ->
case catch decode_disp(Type,wrap_decode(Data)) of
  {'EXIT',{error,Reason}} ->
    {error,Reason};
  {'EXIT',Reason} ->
    {error,{asn1,Reason}};
  {X,_Rest} ->
    {ok,X};
  {X,_Rest,_Len} ->
    {ok,X}
end.

encode_disp('RSAPublicKey',Data) -> 'enc_RSAPublicKey'(Data,[]);
encode_disp('RSAPrivateKey',Data) -> 'enc_RSAPrivateKey'(Data,[]);
encode_disp('Version',Data) -> 'enc_Version'(Data,[]);
encode_disp('OtherPrimeInfos',Data) -> 'enc_OtherPrimeInfos'(Data,[]);
encode_disp('OtherPrimeInfo',Data) -> 'enc_OtherPrimeInfo'(Data,[]);
encode_disp('Algorithm',Data) -> 'enc_Algorithm'(Data,[]);
encode_disp('AlgorithmNull',Data) -> 'enc_AlgorithmNull'(Data,[]);
encode_disp('RSASSA-PSS-params',Data) -> 'enc_RSASSA-PSS-params'(Data,[]);
encode_disp('TrailerField',Data) -> 'enc_TrailerField'(Data,[]);
encode_disp('DigestInfo',Data) -> 'enc_DigestInfo'(Data,[]);
encode_disp('DigestInfoNull',Data) -> 'enc_DigestInfoNull'(Data,[]);
encode_disp(Type,_Data) -> exit({error,{asn1,{undefined_type,Type}}}).


decode_disp('RSAPublicKey',Data) -> 'dec_RSAPublicKey'(Data,mandatory);
decode_disp('RSAPrivateKey',Data) -> 'dec_RSAPrivateKey'(Data,mandatory);
decode_disp('Version',Data) -> 'dec_Version'(Data,mandatory);
decode_disp('OtherPrimeInfos',Data) -> 'dec_OtherPrimeInfos'(Data,mandatory);
decode_disp('OtherPrimeInfo',Data) -> 'dec_OtherPrimeInfo'(Data,mandatory);
decode_disp('Algorithm',Data) -> 'dec_Algorithm'(Data,mandatory);
decode_disp('AlgorithmNull',Data) -> 'dec_AlgorithmNull'(Data,mandatory);
decode_disp('RSASSA-PSS-params',Data) -> 'dec_RSASSA-PSS-params'(Data,mandatory);
decode_disp('TrailerField',Data) -> 'dec_TrailerField'(Data,mandatory);
decode_disp('DigestInfo',Data) -> 'dec_DigestInfo'(Data,mandatory);
decode_disp('DigestInfoNull',Data) -> 'dec_DigestInfoNull'(Data,mandatory);
decode_disp(Type,_Data) -> exit({error,{asn1,{undefined_type,Type}}}).



wrap_encode(Bytes) when is_list(Bytes) ->
   binary_to_list(list_to_binary(Bytes));
wrap_encode(Bytes) when is_binary(Bytes) ->
   binary_to_list(Bytes);
wrap_encode(Bytes) -> Bytes.

wrap_decode(Bytes) when is_list(Bytes) ->
   list_to_binary(Bytes);
wrap_decode(Bytes) -> Bytes.


info() ->
   case ?MODULE:module_info() of
      MI when is_list(MI) ->
         case lists:keysearch(attributes,1,MI) of
            {value,{_,Attributes}} when is_list(Attributes) ->
               case lists:keysearch(asn1_info,1,Attributes) of
                  {value,{_,Info}} when is_list(Info) ->
                     Info;
                  _ ->
                     []
               end;
            _ ->
               []
         end
   end.


%%================================
%%  RSAPublicKey
%%================================
'enc_RSAPublicKey'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1 with type INTEGER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = ?RT_BER:encode_integer([], ?RT_BER:cindex(2,Val,modulus), []),

%%-------------------------------------------------
%% attribute number 2 with type INTEGER
%%-------------------------------------------------
   {EncBytes2,EncLen2} = ?RT_BER:encode_integer([], ?RT_BER:cindex(3,Val,publicExponent), []),

   BytesSoFar = [EncBytes1, EncBytes2],
  LenSoFar = EncLen1 + EncLen2,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_RSAPublicKey'(Bytes, OptOrMand) ->
   'dec_RSAPublicKey'(Bytes, OptOrMand, []).

'dec_RSAPublicKey'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1 with type INTEGER
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = ?RT_BER:decode_integer(Bytes2,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 2 with type INTEGER
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = ?RT_BER:decode_integer(Bytes3,[],[], mandatory),

   {Bytes5,Rb4} = ?RT_BER:restbytes2(RemBytes, Bytes4,noext),
   {{'RSAPublicKey', Term1, Term2}, Bytes5, Rb1+Rb2+Rb3+Rb4}.


%%================================
%%  RSAPrivateKey
%%================================
'enc_RSAPrivateKey'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1 with type INTEGER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = ?RT_BER:encode_integer([], ?RT_BER:cindex(2,Val,version), [{'two-prime',0},{multi,1}], []),

%%-------------------------------------------------
%% attribute number 2 with type INTEGER
%%-------------------------------------------------
   {EncBytes2,EncLen2} = ?RT_BER:encode_integer([], ?RT_BER:cindex(3,Val,modulus), []),

%%-------------------------------------------------
%% attribute number 3 with type INTEGER
%%-------------------------------------------------
   {EncBytes3,EncLen3} = ?RT_BER:encode_integer([], ?RT_BER:cindex(4,Val,publicExponent), []),

%%-------------------------------------------------
%% attribute number 4 with type INTEGER
%%-------------------------------------------------
   {EncBytes4,EncLen4} = ?RT_BER:encode_integer([], ?RT_BER:cindex(5,Val,privateExponent), []),

%%-------------------------------------------------
%% attribute number 5 with type INTEGER
%%-------------------------------------------------
   {EncBytes5,EncLen5} = ?RT_BER:encode_integer([], ?RT_BER:cindex(6,Val,prime1), []),

%%-------------------------------------------------
%% attribute number 6 with type INTEGER
%%-------------------------------------------------
   {EncBytes6,EncLen6} = ?RT_BER:encode_integer([], ?RT_BER:cindex(7,Val,prime2), []),

%%-------------------------------------------------
%% attribute number 7 with type INTEGER
%%-------------------------------------------------
   {EncBytes7,EncLen7} = ?RT_BER:encode_integer([], ?RT_BER:cindex(8,Val,exponent1), []),

%%-------------------------------------------------
%% attribute number 8 with type INTEGER
%%-------------------------------------------------
   {EncBytes8,EncLen8} = ?RT_BER:encode_integer([], ?RT_BER:cindex(9,Val,exponent2), []),

%%-------------------------------------------------
%% attribute number 9 with type INTEGER
%%-------------------------------------------------
   {EncBytes9,EncLen9} = ?RT_BER:encode_integer([], ?RT_BER:cindex(10,Val,coefficient), []),

%%-------------------------------------------------
%% attribute number 10   External PKCS-1:OtherPrimeInfos OPTIONAL
%%-------------------------------------------------
   {EncBytes10,EncLen10} =  case ?RT_BER:cindex(11,Val,otherPrimeInfos) of
         asn1_NOVALUE -> {<<>>,0};
         _ ->
            'enc_OtherPrimeInfos'(?RT_BER:cindex(11,Val,otherPrimeInfos), [])
       end,

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3, EncBytes4, EncBytes5, EncBytes6, EncBytes7, EncBytes8, EncBytes9, EncBytes10],
  LenSoFar = EncLen1 + EncLen2 + EncLen3 + EncLen4 + EncLen5 + EncLen6 + EncLen7 + EncLen8 + EncLen9 + EncLen10,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_RSAPrivateKey'(Bytes, OptOrMand) ->
   'dec_RSAPrivateKey'(Bytes, OptOrMand, []).

'dec_RSAPrivateKey'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1 with type INTEGER
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = ?RT_BER:decode_integer(Bytes2,[],[{'two-prime',0},{multi,1}],[], mandatory),

%%-------------------------------------------------
%% attribute number 2 with type INTEGER
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = ?RT_BER:decode_integer(Bytes3,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 3 with type INTEGER
%%-------------------------------------------------
   {Term3,Bytes5,Rb4} = ?RT_BER:decode_integer(Bytes4,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 4 with type INTEGER
%%-------------------------------------------------
   {Term4,Bytes6,Rb5} = ?RT_BER:decode_integer(Bytes5,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 5 with type INTEGER
%%-------------------------------------------------
   {Term5,Bytes7,Rb6} = ?RT_BER:decode_integer(Bytes6,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 6 with type INTEGER
%%-------------------------------------------------
   {Term6,Bytes8,Rb7} = ?RT_BER:decode_integer(Bytes7,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 7 with type INTEGER
%%-------------------------------------------------
   {Term7,Bytes9,Rb8} = ?RT_BER:decode_integer(Bytes8,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 8 with type INTEGER
%%-------------------------------------------------
   {Term8,Bytes10,Rb9} = ?RT_BER:decode_integer(Bytes9,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 9 with type INTEGER
%%-------------------------------------------------
   {Term9,Bytes11,Rb10} = ?RT_BER:decode_integer(Bytes10,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 10   External PKCS-1:OtherPrimeInfos OPTIONAL
%%-------------------------------------------------
   {Term10,Bytes12,Rb11} = case Bytes11 of
<<0:2,_:1,16:5,_/binary>> ->
'dec_OtherPrimeInfos'(Bytes11, opt_or_default, []);
_ ->
{ asn1_NOVALUE, Bytes11, 0 }
end,

   {Bytes13,Rb12} = ?RT_BER:restbytes2(RemBytes, Bytes12,noext),
   {{'RSAPrivateKey', Term1, Term2, Term3, Term4, Term5, Term6, Term7, Term8, Term9, Term10}, Bytes13, Rb1+Rb2+Rb3+Rb4+Rb5+Rb6+Rb7+Rb8+Rb9+Rb10+Rb11+Rb12}.


%%================================
%%  Version
%%================================

'enc_Version'({'Version',Val}, TagIn) ->
   'enc_Version'(Val, TagIn);

'enc_Version'(Val, TagIn) ->
?RT_BER:encode_integer([], Val, [{'two-prime',0},{multi,1}], TagIn ++ []).


'dec_Version'(Bytes, OptOrMand) ->
   'dec_Version'(Bytes, OptOrMand, []).

'dec_Version'(Bytes, OptOrMand, TagIn) ->
?RT_BER:decode_integer(Bytes,[],[{'two-prime',0},{multi,1}],TagIn++[], OptOrMand).



%%================================
%%  OtherPrimeInfos
%%================================

'enc_OtherPrimeInfos'({'OtherPrimeInfos',Val}, TagIn) ->
   'enc_OtherPrimeInfos'(Val, TagIn);

'enc_OtherPrimeInfos'(Val, TagIn) ->
   {EncBytes,EncLen} = 'enc_OtherPrimeInfos_components'(Val,[],0),
   ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], EncBytes, EncLen).

'enc_OtherPrimeInfos_components'([], AccBytes, AccLen) -> 
   {lists:reverse(AccBytes),AccLen};

'enc_OtherPrimeInfos_components'([H|T],AccBytes, AccLen) ->
   {EncBytes,EncLen} = 'enc_OtherPrimeInfo'(H, []),
   'enc_OtherPrimeInfos_components'(T,[EncBytes|AccBytes], AccLen + EncLen).



'dec_OtherPrimeInfos'(Bytes, OptOrMand) ->
   'dec_OtherPrimeInfos'(Bytes, OptOrMand, []).

'dec_OtherPrimeInfos'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
   ?RT_BER:decode_components(Rb1, Len, Bytes1, fun 'dec_OtherPrimeInfo'/3, [], []).




%%================================
%%  OtherPrimeInfo
%%================================
'enc_OtherPrimeInfo'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1 with type INTEGER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = ?RT_BER:encode_integer([], ?RT_BER:cindex(2,Val,prime), []),

%%-------------------------------------------------
%% attribute number 2 with type INTEGER
%%-------------------------------------------------
   {EncBytes2,EncLen2} = ?RT_BER:encode_integer([], ?RT_BER:cindex(3,Val,exponent), []),

%%-------------------------------------------------
%% attribute number 3 with type INTEGER
%%-------------------------------------------------
   {EncBytes3,EncLen3} = ?RT_BER:encode_integer([], ?RT_BER:cindex(4,Val,coefficient), []),

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3],
  LenSoFar = EncLen1 + EncLen2 + EncLen3,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_OtherPrimeInfo'(Bytes, OptOrMand) ->
   'dec_OtherPrimeInfo'(Bytes, OptOrMand, []).

'dec_OtherPrimeInfo'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1 with type INTEGER
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = ?RT_BER:decode_integer(Bytes2,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 2 with type INTEGER
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = ?RT_BER:decode_integer(Bytes3,[],[], mandatory),

%%-------------------------------------------------
%% attribute number 3 with type INTEGER
%%-------------------------------------------------
   {Term3,Bytes5,Rb4} = ?RT_BER:decode_integer(Bytes4,[],[], mandatory),

   {Bytes6,Rb5} = ?RT_BER:restbytes2(RemBytes, Bytes5,noext),
   {{'OtherPrimeInfo', Term1, Term2, Term3}, Bytes6, Rb1+Rb2+Rb3+Rb4+Rb5}.


%%================================
%%  Algorithm
%%================================
'enc_Algorithm'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1 with type OBJECT IDENTIFIER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = ?RT_BER:encode_object_identifier(?RT_BER:cindex(2,Val,algorithm), []),

%%-------------------------------------------------
%% attribute number 2 with type ASN1_OPEN_TYPE OPTIONAL
%%-------------------------------------------------
   {EncBytes2,EncLen2} =  case ?RT_BER:cindex(3,Val,parameters) of
         asn1_NOVALUE -> {<<>>,0};
         _ ->
            ?RT_BER:encode_open_type(?RT_BER:cindex(3,Val,parameters), [])
       end,

   BytesSoFar = [EncBytes1, EncBytes2],
  LenSoFar = EncLen1 + EncLen2,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_Algorithm'(Bytes, OptOrMand) ->
   'dec_Algorithm'(Bytes, OptOrMand, []).

'dec_Algorithm'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1 with type OBJECT IDENTIFIER
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = ?RT_BER:decode_object_identifier(Bytes2,[], mandatory),

%%-------------------------------------------------
%% attribute number 2 with type ASN1_OPEN_TYPE OPTIONAL
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = case (catch ?RT_BER:decode_open_type(ber_bin,Bytes3,[])) of
{'EXIT',{error,{asn1,{no_optional_tag,_}}}} -> { asn1_NOVALUE, Bytes3, 0 };
Casetmp1-> Casetmp1
end,

   {Bytes5,Rb4} = ?RT_BER:restbytes2(RemBytes, Bytes4,noext),
   {{'Algorithm', Term1, Term2}, Bytes5, Rb1+Rb2+Rb3+Rb4}.


%%================================
%%  AlgorithmNull
%%================================
'enc_AlgorithmNull'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1 with type OBJECT IDENTIFIER
%%-------------------------------------------------
   {EncBytes1,EncLen1} = ?RT_BER:encode_object_identifier(?RT_BER:cindex(2,Val,algorithm), []),

%%-------------------------------------------------
%% attribute number 2 with type NULL
%%-------------------------------------------------
   {EncBytes2,EncLen2} = ?RT_BER:encode_null(?RT_BER:cindex(3,Val,parameters), []),

   BytesSoFar = [EncBytes1, EncBytes2],
  LenSoFar = EncLen1 + EncLen2,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_AlgorithmNull'(Bytes, OptOrMand) ->
   'dec_AlgorithmNull'(Bytes, OptOrMand, []).

'dec_AlgorithmNull'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1 with type OBJECT IDENTIFIER
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = ?RT_BER:decode_object_identifier(Bytes2,[], mandatory),

%%-------------------------------------------------
%% attribute number 2 with type NULL
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = ?RT_BER:decode_null(Bytes3,[], mandatory),

   {Bytes5,Rb4} = ?RT_BER:restbytes2(RemBytes, Bytes4,noext),
   {{'AlgorithmNull', Term1, Term2}, Bytes5, Rb1+Rb2+Rb3+Rb4}.


%%================================
%%  RSASSA-PSS-params
%%================================
'enc_RSASSA-PSS-params'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1   External PKCS-1:Algorithm
%%-------------------------------------------------
   {EncBytes1,EncLen1} = 'enc_Algorithm'(?RT_BER:cindex(2,Val,hashAlgorithm), [{tag,128,0,'EXPLICIT',32}]),

%%-------------------------------------------------
%% attribute number 2   External PKCS-1:Algorithm
%%-------------------------------------------------
   {EncBytes2,EncLen2} = 'enc_Algorithm'(?RT_BER:cindex(3,Val,maskGenAlgorithm), [{tag,128,1,'EXPLICIT',32}]),

%%-------------------------------------------------
%% attribute number 3 with type INTEGER DEFAULT = 20
%%-------------------------------------------------
   {EncBytes3,EncLen3} =  case ?RT_BER:cindex(4,Val,saltLength) of
         asn1_DEFAULT -> {<<>>,0};
         20 -> {<<>>,0};
         _ ->
            ?RT_BER:encode_integer([], ?RT_BER:cindex(4,Val,saltLength), [{tag,128,2,'EXPLICIT',32}])
       end,

%%-------------------------------------------------
%% attribute number 4 with type INTEGER DEFAULT = 1
%%-------------------------------------------------
   {EncBytes4,EncLen4} =  case ?RT_BER:cindex(5,Val,trailerField) of
         asn1_DEFAULT -> {<<>>,0};
         1 -> {<<>>,0};
         _ ->
            ?RT_BER:encode_integer([], ?RT_BER:cindex(5,Val,trailerField), [{trailerFieldBC,1}], [{tag,128,3,'EXPLICIT',32}])
       end,

   BytesSoFar = [EncBytes1, EncBytes2, EncBytes3, EncBytes4],
  LenSoFar = EncLen1 + EncLen2 + EncLen3 + EncLen4,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_RSASSA-PSS-params'(Bytes, OptOrMand) ->
   'dec_RSASSA-PSS-params'(Bytes, OptOrMand, []).

'dec_RSASSA-PSS-params'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1   External PKCS-1:Algorithm
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = 'dec_Algorithm'(Bytes2, mandatory, [{tag,128,0,'EXPLICIT',32}]),

%%-------------------------------------------------
%% attribute number 2   External PKCS-1:Algorithm
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = 'dec_Algorithm'(Bytes3, mandatory, [{tag,128,1,'EXPLICIT',32}]),

%%-------------------------------------------------
%% attribute number 3 with type INTEGER DEFAULT = 20
%%-------------------------------------------------
   {Term3,Bytes5,Rb4} = case Bytes4 of
<<2:2,_:1,2:5,_/binary>> ->
?RT_BER:decode_integer(Bytes4,[],[{tag,128,2,'EXPLICIT',32}], mandatory);
_ ->
{20,Bytes4, 0 }
end,

%%-------------------------------------------------
%% attribute number 4 with type INTEGER DEFAULT = 1
%%-------------------------------------------------
   {Term4,Bytes6,Rb5} = case Bytes5 of
<<2:2,_:1,3:5,_/binary>> ->
?RT_BER:decode_integer(Bytes5,[],[{trailerFieldBC,1}],[{tag,128,3,'EXPLICIT',32}], mandatory);
_ ->
{1,Bytes5, 0 }
end,

   {Bytes7,Rb6} = ?RT_BER:restbytes2(RemBytes, Bytes6,noext),
   {{'RSASSA-PSS-params', Term1, Term2, Term3, Term4}, Bytes7, Rb1+Rb2+Rb3+Rb4+Rb5+Rb6}.


%%================================
%%  TrailerField
%%================================

'enc_TrailerField'({'TrailerField',Val}, TagIn) ->
   'enc_TrailerField'(Val, TagIn);

'enc_TrailerField'(Val, TagIn) ->
?RT_BER:encode_integer([], Val, [{trailerFieldBC,1}], TagIn ++ []).


'dec_TrailerField'(Bytes, OptOrMand) ->
   'dec_TrailerField'(Bytes, OptOrMand, []).

'dec_TrailerField'(Bytes, OptOrMand, TagIn) ->
?RT_BER:decode_integer(Bytes,[],[{trailerFieldBC,1}],TagIn++[], OptOrMand).



%%================================
%%  DigestInfo
%%================================
'enc_DigestInfo'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1   External PKCS-1:Algorithm
%%-------------------------------------------------
   {EncBytes1,EncLen1} = 'enc_Algorithm'(?RT_BER:cindex(2,Val,digestAlgorithm), []),

%%-------------------------------------------------
%% attribute number 2 with type OCTET STRING
%%-------------------------------------------------
   {EncBytes2,EncLen2} = ?RT_BER:encode_octet_string([], ?RT_BER:cindex(3,Val,digest), []),

   BytesSoFar = [EncBytes1, EncBytes2],
  LenSoFar = EncLen1 + EncLen2,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_DigestInfo'(Bytes, OptOrMand) ->
   'dec_DigestInfo'(Bytes, OptOrMand, []).

'dec_DigestInfo'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1   External PKCS-1:Algorithm
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = 'dec_Algorithm'(Bytes2, mandatory, []),

%%-------------------------------------------------
%% attribute number 2 with type OCTET STRING
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = ?RT_BER:decode_octet_string(Bytes3,[],[], no_length, mandatory),

   {Bytes5,Rb4} = ?RT_BER:restbytes2(RemBytes, Bytes4,noext),
   {{'DigestInfo', Term1, Term2}, Bytes5, Rb1+Rb2+Rb3+Rb4}.


%%================================
%%  DigestInfoNull
%%================================
'enc_DigestInfoNull'(Val, TagIn) ->

%%-------------------------------------------------
%% attribute number 1   External PKCS-1:AlgorithmNull
%%-------------------------------------------------
   {EncBytes1,EncLen1} = 'enc_AlgorithmNull'(?RT_BER:cindex(2,Val,digestAlgorithm), []),

%%-------------------------------------------------
%% attribute number 2 with type OCTET STRING
%%-------------------------------------------------
   {EncBytes2,EncLen2} = ?RT_BER:encode_octet_string([], ?RT_BER:cindex(3,Val,digest), []),

   BytesSoFar = [EncBytes1, EncBytes2],
  LenSoFar = EncLen1 + EncLen2,
  ?RT_BER:encode_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], BytesSoFar, LenSoFar).


'dec_DigestInfoNull'(Bytes, OptOrMand) ->
   'dec_DigestInfoNull'(Bytes, OptOrMand, []).

'dec_DigestInfoNull'(Bytes, OptOrMand, TagIn) ->
   %%-------------------------------------------------
   %% decode tag and length 
   %%-------------------------------------------------
   {{_,Len},Bytes1,Rb1} = ?RT_BER:check_tags(TagIn ++ [{tag,0,16,'IMPLICIT',32}], Bytes, OptOrMand), 
{Bytes2,RemBytes} = ?RT_BER:split_list(Bytes1,Len),

%%-------------------------------------------------
%% attribute number 1   External PKCS-1:AlgorithmNull
%%-------------------------------------------------
   {Term1,Bytes3,Rb2} = 'dec_AlgorithmNull'(Bytes2, mandatory, []),

%%-------------------------------------------------
%% attribute number 2 with type OCTET STRING
%%-------------------------------------------------
   {Term2,Bytes4,Rb3} = ?RT_BER:decode_octet_string(Bytes3,[],[], no_length, mandatory),

   {Bytes5,Rb4} = ?RT_BER:restbytes2(RemBytes, Bytes4,noext),
   {{'DigestInfoNull', Term1, Term2}, Bytes5, Rb1+Rb2+Rb3+Rb4}.
'pkcs-1'() ->
{1,2,840,113549,1,1}.

'rsaEncryption'() ->
{1,2,840,113549,1,1,1}.

'id-RSAES-OAEP'() ->
{1,2,840,113549,1,1,7}.

'id-pSpecified'() ->
{1,2,840,113549,1,1,9}.

'id-RSASSA-PSS'() ->
{1,2,840,113549,1,1,10}.

'md2WithRSAEncryption'() ->
{1,2,840,113549,1,1,2}.

'md5WithRSAEncryption'() ->
{1,2,840,113549,1,1,4}.

'sha1WithRSAEncryption'() ->
{1,2,840,113549,1,1,5}.

'sha256WithRSAEncryption'() ->
{1,2,840,113549,1,1,11}.

'sha384WithRSAEncryption'() ->
{1,2,840,113549,1,1,12}.

'sha512WithRSAEncryption'() ->
{1,2,840,113549,1,1,13}.

'id-sha1'() ->
{1,3,14,3,2,26}.

'id-md2'() ->
{1,2,840,113549,2,2}.

'id-md5'() ->
{1,2,840,113549,2,5}.

'id-mgf1'() ->
{1,2,840,113549,1,1,8}.

