package CLI {

	sub ascii-art() {
		q:to/END/
	   ____              __
	  / __ \____  ____ _/ /
	 / / / / __ \/ __ `/ / 
	/ /_/ / /_/ / /_/ / /  
	\____/ .___/\__,_/_/   
	    /_/                
	END
	}

	sub usage() {
		qq:to/END/
		END
	}

	my %*SUB-MAIN-OPTS = :named-anywhere;
	
	multi sub MAIN(Bool :h(:$help)?) is export {
		note ascii-art;

		note usage if $help;
	}

	multi sub MAIN(*@, *%) {
		note ascii-art;

		note usage;
		exit 1;
	}

}
